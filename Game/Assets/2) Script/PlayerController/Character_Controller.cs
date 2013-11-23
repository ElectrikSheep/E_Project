﻿using UnityEngine;
using System.Collections;

public class Character_Controller : MonoBehaviour {

		[SerializeField] private Animation _animation ;
		[SerializeField] private ParticleSystem _fireEffect ;
		[SerializeField] private ParticleSystem _confettis ;


		private bool is_Shooting = false ;

		[HideInInspector] public static Vector3 _position = Vector3.zero ;


		private Ray _ShotGunCast ;
		private RaycastHit hitPosition ;




		private void Start() {
				is_Shooting = true ;
				StartCoroutine( PlayEntrance_Animation() );
		}

		private IEnumerator PlayEntrance_Animation() {
				_animation["intro"].wrapMode = WrapMode.Once ;
				_animation.Play("intro") ;

				while(_animation.isPlaying){
						yield return null ;
				}

				_animation["walk"].wrapMode = WrapMode.Loop ;
				_animation.Play("walk") ;

				is_Shooting = false ;
		}
	

		public IEnumerator Play_ShootAnimation() {
				_fireEffect.Stop() ;
				_animation["shoot"].speed = 2f ;
				_animation["shoot"].wrapMode = WrapMode.Once ;
				_animation.CrossFade("shoot");

				yield return new WaitForSeconds(.5f /_animation["shoot"].speed );

				_fireEffect.Play() ;
				_ShotGunCast = new Ray( _fireEffect.transform.position, _fireEffect.transform.forward );

				if( Physics.Raycast(_ShotGunCast, out hitPosition, 10000f, 1<<9 )){
						Debug.Log("HIT:"+hitPosition.collider.name ) ;
						//Damage_Target( hitPosition.collider.gameObject );
						_confettis.transform.position = hitPosition.point ;
						hitPosition.collider.gameObject.SendMessage("End_ofLife", SendMessageOptions.DontRequireReceiver );
						_confettis.Play();
				}

				while( _animation.isPlaying ){
						yield return null ;
				}

				_animation.Play( "walk" );
				is_Shooting = false ;
		}

		private void Update() {

				_ShotGunCast = new Ray( _fireEffect.transform.position, _fireEffect.transform.forward );
				Debug.DrawLine(_fireEffect.transform.position,_fireEffect.transform.position+ _fireEffect.transform.forward*100f);

				if( Input.GetMouseButtonDown(0) ){
						Fire() ;
				}
				_position = transform.position ;
		}
		/*
private void Damage_Target( GameObject _target ) {
		_target.SendMessage( "Has_BeenTouched", _weaponKind, SendMessageOptions.DontRequireReceiver );
}*/
		private void Fire() {
				if( is_Shooting ) return ;

				is_Shooting = true ;
				StartCoroutine( Play_ShootAnimation() ) ;

		}


}