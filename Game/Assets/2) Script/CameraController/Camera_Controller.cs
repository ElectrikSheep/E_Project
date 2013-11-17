using UnityEngine;
using System.Collections;


#if UNITY_EDITOR || UNITY_WEBPLAYER
using Camera_Control = Camera_Desktop ;
#elif UNITY_ANDROID || UNITY_WP8
using Camera_Control = Camera_Mobile ;
#elif UNITY_IPHONE
using Camera_Control = Camera_Mobile ;
#endif

public class Camera_Controller : MonoBehaviour {

	
	[SerializeField] private float max_X = -360 ;
	[SerializeField] private float min_X = 360 ;

	[SerializeField] private float max_Y = -60f;
	[SerializeField] private float min_Y = 60f;

	[SerializeField] private bool is_Gyro ;

	private void Start() {
		Camera_Control.Initialisation( transform, min_X, max_X, min_Y, max_Y ) ;
	}


	private void Update() {
		Camera_Control.Camera_Update() ;
	}
	private void LateUpdate() {
		Camera_Control.Camera_LateUpdate() ;
	}


}