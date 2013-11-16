using UnityEngine;
using System.Collections;

public class Gyro_Controller : MonoBehaviour {

	[SerializeField] private Gyroscope _g ;
	[SerializeField] private Transform _head ;

	private float sensitivity = 1f ;

	private Vector3 tempVector ;

	// Use this for initialization
	void Start () {
		if( SystemInfo.supportsGyroscope ) {
			_g = Input.gyro ;
			_g.enabled = true ;
		}

		_v1 = _v2 = Vector3.zero ;
	}
	
	// Update is called once per frame
	void Update () {
		if(_g == null ) return ;

		Update_PlayerRotation() ;
		Update_HeadRotation() ;
	}


	private Vector2 _v1, _v2 ;

	private Vector3 tempAddition ;
	private float tF ;
	private float Get_AngleBetween_Vector( Vector2 _from, Vector2 _to ) {
		tF = Mathf.Atan2( _to.y - _from.y , _to.x - _from.x ) * Mathf.Rad2Deg;
		tF = tF >90f ? tF-180f : tF ;
		return -tF ;
	}

	private void Update_HeadRotation() {
		tempVector.x = tempVector.y = tempVector.z = 0f ;


		_v1.x = 0f ;	_v2.x = _g.gravity.x ;
		_v1.y = -1f ;	_v2.y = _g.gravity.y ;
		_v1.Normalize() ;
		_v2.Normalize() ;

		tempVector.z = Get_AngleBetween_Vector( _v1, _v2 )  ; 
		
		_v1.x = 1f ;	_v2.x = _g.gravity.y ;
		_v1.y = 0f ;	_v2.y = _g.gravity.z ;
		_v1.Normalize() ;
		_v2.Normalize() ;

		tempVector.x = Get_AngleBetween_Vector( _v1, _v2 ) ;
		tempVector.x = tempVector.x >90f ? 180f - tempVector.x : -tempVector.x ;

		_head.localEulerAngles = tempVector ;
	}

	private void Update_PlayerRotation() {
		if( _g.gravity.x == 0 ) {
			_head.localEulerAngles = Vector3.zero ;
			transform.localEulerAngles = Vector3.zero ;
			return ;
		}
		if( _g.gravity.x < 0f ){
			tempVector = Vector3.zero ;
			tempVector.y = Mathf.Lerp(0f, -25f, -_g.gravity.x) ;

		}
		else{
			tempVector = Vector3.zero ;
			tempVector.y = Mathf.Lerp(0f, 25f, _g.gravity.x) ;
		}
		transform.localEulerAngles = tempVector ;

	}

	public void Set_RotationSensitivity (float _s ) {
		sensitivity = _s ;
	}

}
