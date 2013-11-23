using UnityEngine;
using System.Collections;

public class Movement_Desktop {

		private static Transform Player ;
		private static float speed_Sensitivity = 1f ;
		private static float straffing_Sensitivity = 1f ;

		private static Vector3 tempVector ;

		private static bool isKeyboard = false ;
	
		public static void Init_Controller (float _speedSensitivity, float _straffingSensitivity, Transform _player, bool _isKeyboard )
		{
				speed_Sensitivity = _speedSensitivity ;
				straffing_Sensitivity = _straffingSensitivity ;
				isKeyboard = _isKeyboard ;

				Player = _player ;
		}

		public static void Movement_Update() {

				tempVector.x = tempVector.y = 0f ;
				tempVector.z = 1f * speed_Sensitivity ;

				Player.Translate( tempVector, Space.Self );
		}

}
