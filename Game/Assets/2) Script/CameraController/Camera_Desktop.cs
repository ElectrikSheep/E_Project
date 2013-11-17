using UnityEngine;
using System.Collections;

public class Camera_Desktop : MonoBehaviour
{
		public enum RotationAxes
		{
				MouseXAndY = 0,
				MouseX = 1,
				MouseY = 2

		}

		public static RotationAxes axes = RotationAxes.MouseXAndY;
		public static float sensitivityX = 1f;
		public static float sensitivityY = 1f;
		public static float minimumX = -360f;
		public static float maximumX = 360f;
		public static float minimumY = -60f;
		public static float maximumY = 60f;
		public static float rotationY = 0f;
		private static Transform _transform;
		private static Vector3 _tempVec3;

		public static void Initialisation (Transform _t, float minX, float maxX, float minY, float maxY)
		{
				Debug.Log ("Camera set to use Desktop controls");
				Screen.lockCursor = true;
				minimumX = minX;
				minimumY = minY;
				maximumX = maxX;
				maximumY = maxY;
				_transform = _t;
		}

		public static void Camera_LateUpdate ()
		{
				if (!Screen.lockCursor)
						return;

				if (axes == RotationAxes.MouseXAndY) {

						float rotationX = _transform.localEulerAngles.y + Input.GetAxis ("Mouse X") * sensitivityX;
						rotationY += Input.GetAxis ("Mouse Y") * sensitivityY;
						rotationY = Mathf.Clamp (rotationY, minimumY, maximumY);

						if( rotationX > maximumX ){
								if( rotationX <= 180f ) 
										rotationX = maximumX ;
								else 
										rotationX = (rotationX < (360f+minimumX)) ? (360f+minimumX) : rotationX ;
						}


						_tempVec3.x = -rotationY;
						_tempVec3.y = rotationX;
						_tempVec3.z = 0 ;

						_transform.localEulerAngles = _tempVec3 ;

				} else if (axes == RotationAxes.MouseX)
						_transform.Rotate (0, Input.GetAxis ("Mouse X") * sensitivityX, 0);
				else {

						rotationY += Input.GetAxis ("Mouse Y") * sensitivityY;
						rotationY = Mathf.Clamp (rotationY, minimumY, maximumY);

						_transform.localEulerAngles = new Vector3 (-rotationY, _transform.localEulerAngles.y, 0);
				}
		}

		public static void Camera_Update ()
		{
		}
}
