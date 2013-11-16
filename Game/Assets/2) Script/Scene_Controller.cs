using UnityEngine;
using System.Collections;

public class Scene_Controller : MonoBehaviour {

	[SerializeField] private Transform Player ;
	[SerializeField] private float speed = 1f ;
	[SerializeField] private float rotation_Speed = 1f ;

	private Vector3 tempVector ;
	private Gyro_Controller _gData ;

	private bool is_Jumping ;
	private readonly float time_ToJump = .5f ;
	// Use this for initialization
	void Start () {
		_gData = Player.GetComponent<Gyro_Controller>() ;
		_gData.Set_RotationSensitivity( rotation_Speed ) ;
	}

	// Update is called once per frame
	void Update () {
		if(is_Jumping) return ;


		Move_Player() ;
	}

	private void Move_Player() {
		tempVector.x = (Player.forward.x) * speed ;
		tempVector.y = (Player.forward.y) * speed ;
		tempVector.z = (Player.forward.z) * speed ;

		Player.Translate( tempVector, Space.Self );
	}



	public void Jump() {
		is_Jumping = true ;
		StartCoroutine (Coroutine_Jump()) ;
	}

	private IEnumerator Coroutine_Jump() {
		is_Jumping = true ;
		Vector3 target = transform.position + transform.right ;
		tempVector = transform.position ;
		float timer = 0f;

		while ( timer < time_ToJump ) {
			timer += Time.deltaTime ;
			transform.position = Vector3.Lerp(tempVector, target, timer/time_ToJump );
			yield return null ;
	}
		transform.position = target ;
		is_Jumping = false ;
}
}