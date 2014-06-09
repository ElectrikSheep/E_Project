using UnityEngine;
using System.Collections;

public class Camera_Mobile 
{
		private static Gyroscope gyroRef;

		private static bool gyroEnabled = true;
		private const float lowPassFilterFactor = 0.2f;
		private static float tempValue = 0f ;
		private static Vector3 tempVector ;
		private static readonly Quaternion baseIdentity = Quaternion.Euler (90, 0, 0);

		private static Quaternion cameraBase = Quaternion.identity;
		private static Quaternion calibration = Quaternion.identity;
		private static Quaternion baseOrientation = Quaternion.Euler (90, 0, 0);
		private static Quaternion baseOrientationRotationFix = Quaternion.identity;
		private static Quaternion referanceRotation = Quaternion.identity;

		public static void Initialisation ()
		{
				Debug.Log ("Camera set to use Mobile controls");
				AttachGyro() ;
		}

		public static void Camera_LateUpdate ()
		{
				if (!gyroEnabled)
						return;
				Camera_Controller.head.rotation = Quaternion.Slerp (Camera_Controller.head.rotation,
						cameraBase * (ConvertRotation (referanceRotation * gyroRef.attitude) * GetRotFix ()), lowPassFilterFactor);
				/*
				tempValue = _transform.localEulerAngles.y ;
				tempValue = Mathf.Clamp (tempValue, minimumY, Camera_Controller.max_Y);
				tempVector.y = tempValue ;

				Debug.Log("Old pos : " + _transform.localEulerAngles );

				tempValue = _transform.localEulerAngles.x ;
				if( tempValue > maximumX ){
						if( tempValue <= 180f ) 
								tempValue = maximumX ;
						else 
								tempValue = (tempValue < (360f+Camera_Controller.min_X)) ? (360f+Camera_Controller.min_X) : tempValue ;
				}
				tempVector.x = tempValue ;
				tempVector.z = 0f ;
				_transform.localEulerAngles = tempVector ;

				Debug.Log("New pos : " + _transform.localEulerAngles );
				*/
		}

		/// <summary>
		/// Attaches gyro controller to the transform.
		/// </summary>
		private static void AttachGyro ()
		{
				gyroEnabled = SystemInfo.supportsGyroscope;
				if( !gyroEnabled ){
						Debug.LogError("NO GYRO") ;
						return ;
				}
				gyroRef = Input.gyro ;
				ResetBaseOrientation ();
				UpdateCalibration (true);
				UpdateCameraBaseRotation (true);
				RecalculateReferenceRotation ();
		}

		/// <summary>
		/// Detaches gyro controller from the transform
		/// </summary>
		private static void DetachGyro ()
		{
				gyroEnabled = false;
		}

		/// <summary>
		/// Update the gyro calibration.
		/// </summary>
		private static void UpdateCalibration (bool onlyHorizontal)
		{
				if (onlyHorizontal) {
						var fw = (gyroRef.attitude) * (-Vector3.forward);
						fw.z = 0;
						if (fw == Vector3.zero) {
								calibration = Quaternion.identity;
						} else {
								calibration = (Quaternion.FromToRotation (baseOrientationRotationFix * Vector3.up, fw));
						}
				} else {
						calibration = gyroRef.attitude;
				}
		}

		/// <summary>
		/// Update the camera base rotation.
		/// </summary>
		/// <param name='onlyHorizontal'>
		/// Only y rotation.
		/// </param>
		private static void UpdateCameraBaseRotation (bool onlyHorizontal)
		{
				if (onlyHorizontal) {
						var fw = Camera_Controller.head.forward;
						fw.y = 0;
						if (fw == Vector3.zero) {
								cameraBase = Quaternion.identity;
						} else {
								cameraBase = Quaternion.FromToRotation (Vector3.forward, fw);
						}
				} else {
						cameraBase = Camera_Controller.head.rotation;
				}
		}

		/// <summary>
		/// Converts the rotation from right handed to left handed.
		/// </summary>
		/// <returns>
		/// The result rotation.
		/// </returns>
		/// <param name='q'>
		/// The rotation to convert.
		/// </param>
		private static Quaternion ConvertRotation (Quaternion q)
		{
				return new Quaternion (q.x, q.y, -q.z, -q.w);	
		}

		/// <summary>
		/// Gets the rot fix for different orientations.
		/// </summary>
		/// <returns>
		/// The rot fix.
		/// </returns>
		private static Quaternion GetRotFix ()
		{
				#if UNITY_3_5
				if (Screen.orientation == ScreenOrientation.Portrait)
				return Quaternion.identity;

				if (Screen.orientation == ScreenOrientation.LandscapeLeft || Screen.orientation == ScreenOrientation.Landscape)
				return Quaternion.Euler (0, 0, -90);

				if (Screen.orientation == ScreenOrientation.LandscapeRight)
				return Quaternion.Euler (0, 0, 90);

				if (Screen.orientation == ScreenOrientation.PortraitUpsideDown)
				return Quaternion.Euler (0, 0, 180);;
				#endif
				return Quaternion.identity;
		}

		/// <summary>
		/// Recalculates reference system.
		/// </summary>
		private static void ResetBaseOrientation ()
		{
				baseOrientationRotationFix = GetRotFix ();
				baseOrientation = baseOrientationRotationFix * baseIdentity;
		}

		/// <summary>
		/// Recalculates reference rotation.
		/// </summary>
		private static void RecalculateReferenceRotation ()
		{
				referanceRotation = Quaternion.Inverse (baseOrientation) * Quaternion.Inverse (calibration);
		}
}
