using UnityEngine;
using System.Collections;

public class Movement_Desktop {

		private static Vector3 tempVector = Vector3.zero;

		public static void Init_Module(){

		}

		public static void Movement_Update() {

				tempVector.x = .1f * from_KeyboardToStraffing() ;
				tempVector.y = 0f ;
				tempVector.z = 1f * Movement_Controller.speedSensitivity ;

				Movement_Controller.playerPos.Translate( tempVector, Space.Self );
		}

		private static float from_KeyboardToStraffing() {
				if(Input.GetKey(KeyCode.A)||Input.GetKey(KeyCode.Q)||Input.GetKey(KeyCode.LeftArrow) ){
						return -Movement_Controller.strafSensitivity ;
				}
				else if(Input.GetKey(KeyCode.D)||Input.GetKey(KeyCode.RightArrow) ){
						return Movement_Controller.strafSensitivity ;
				}
				return 0f;
		}

}
