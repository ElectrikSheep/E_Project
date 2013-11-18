using UnityEngine;
using System.Collections;

public class Camera_Mobile : MonoBehaviour {

	
	private static float deltaXAngle;
	private static float deltaYAngle;

	private static Transform _transform ;
	private static bool gyroAvailable;

	private static Gyroscope gyro;
	private static Quaternion rotationFix;

	public static void Initialisation ( Transform _t, float min_X, float max_X, float min_Y, float max_Y) {
		
		Debug.Log("Camera set to use Mobile controls");

		// Cache the transform reference for efficiency.
		_transform = _t;

		var originalParent = _transform.parent; // check if this transform has a parent
		var cameraObject = new GameObject("CameraMotion"); // make a new parent
		cameraObject.transform.position = _transform.position; // move the new parent to this transform position
		_transform.parent = cameraObject.transform; // make this transform a child of the new parent
		cameraObject.transform.parent = originalParent; // make the new parent a child of the original parent

		// if iPhone5, decrease the FOV
		//if (iPhone.generation == iPhoneGeneration.iPhone5 || iPhone.generation == iPhoneGeneration.iPodTouch5Gen)
		//	gameObject.GetComponent<Camera>().fov = 60f;

		gyroAvailable = SystemInfo.supportsGyroscope;

		if (gyroAvailable) {

			Input.ResetInputAxes();
			gyro = Input.gyro;
			gyro.enabled = true;

			cameraObject.transform.eulerAngles = new Vector3(90f, 90f, 0);
			if (Screen.orientation == ScreenOrientation.LandscapeLeft) {
				rotationFix = Quaternion.Euler(0f, 0f, 180f);
			} else if (Screen.orientation == ScreenOrientation.Portrait) {
				rotationFix = Quaternion.Euler(0f, 0f, 90f);
			} else if (Screen.orientation == ScreenOrientation.PortraitUpsideDown) {
				rotationFix = Quaternion.Euler(0f, 0f, 270f);
			} else {
				rotationFix = Quaternion.Euler(0f, 0f, 0f);
			}

		} else {
			Debug.Log("NO GYRO");
		}
	}

	public static void Camera_Update() {}
	public static void Camera_LateUpdate() {
		if (!gyroAvailable) 
			return ;
		else 
			_transform.localRotation = gyro.attitude * rotationFix;
	}

	public static void CleanUP() {

	}
	



}
