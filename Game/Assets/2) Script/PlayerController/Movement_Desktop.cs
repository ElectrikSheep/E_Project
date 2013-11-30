using UnityEngine;
using System.Collections;

public class Movement_Desktop {

		private static Vector3 tempVector = Vector3.zero;

		public static void Movement_Update() {

				tempVector.x = tempVector.y = 0f ;
				tempVector.z = 1f * Movement_Controller.speedSensitivity ;

				Movement_Controller.playerPos.Translate( tempVector, Space.Self );
		}

}
