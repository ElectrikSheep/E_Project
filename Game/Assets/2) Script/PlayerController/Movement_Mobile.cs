using UnityEngine;
using System.Collections;

public class Movement_Mobile {

		private static Vector3 tempVector = Vector3.zero ;
		private static Gyroscope _g ;


		public static void Init_Module(){
				_g = Input.gyro ;
				_g.enabled = true ;
		}

		public static void Movement_Update() {
				tempVector.x = from_GyroToStraffing() ;
				tempVector.y = 0f ;
				tempVector.z = 1f *  Movement_Controller.speedSensitivity ;

				Movement_Controller.playerPos.Translate( tempVector, Space.Self );
		}

		private static float from_GyroToStraffing() {
				if( _g.gravity.x == 0 ) {
						return 0f;
				}
				if( _g.gravity.x < 0f ){
						return _g.gravity.x*.5f *Movement_Controller.strafSensitivity ;

				}
				else{
						return _g.gravity.x*.5f *Movement_Controller.strafSensitivity ;
				}
		}

}
