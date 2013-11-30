using UnityEngine;
using System.Collections;

public class Camera_Desktop
{
		public static float sensitivityX = 1f;
		public static float sensitivityY = 1f;

		private static float rotationX = 0f ;
		private static float rotationY = 0f ;
		private static Vector3 _tempVec3;

		public static void Initialisation () 
		{
				Debug.Log ("Camera set to use Desktop controls");
				Screen.lockCursor = Camera_Controller.HideCursor ;
		}

		public static void Camera_LateUpdate ()
		{
				// Get the rotation values
				rotationX = Camera_Controller.head.localEulerAngles.y + Input.GetAxis ("Mouse X") * sensitivityX;
				rotationY += Input.GetAxis ("Mouse Y") * sensitivityY;
				rotationY = Mathf.Clamp (rotationY, Camera_Controller.min_Y, Camera_Controller.max_Y);

				// Clamping this shit
				if( rotationX > Camera_Controller.max_X ){
						if( rotationX <= 180f ) 
								rotationX = Camera_Controller.max_X ;
						else 
								rotationX = (rotationX < (360f+Camera_Controller.min_X)) ? (360f+Camera_Controller.min_X) : rotationX ;
				}

				_tempVec3.x = -rotationY;
				_tempVec3.y = rotationX;
				_tempVec3.z = 0 ;

				Camera_Controller.head.localEulerAngles = _tempVec3 ;
		}

		public static void Show_Cursor( bool val) {
				Screen.lockCursor = val ;
		}




		private static void Rotate_X_AxisOnly() {
				Camera_Controller.head.Rotate (0, Input.GetAxis ("Mouse X") * sensitivityX, 0);
		}

		private static void Rotate_Y_AxisOnly() {
				rotationY += Input.GetAxis ("Mouse Y") * sensitivityY;
				rotationY = Mathf.Clamp (rotationY, Camera_Controller.min_Y, Camera_Controller.max_Y);

				Camera_Controller.head.localEulerAngles = new Vector3 (-rotationY, Camera_Controller.head.localEulerAngles.y, 0);
		}






}
