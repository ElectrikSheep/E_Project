using UnityEngine;
using System.Collections;

public class Astronaut_Controller : MonoBehaviour {

		private bool is_InPool = true ;
		private bool is_EndOfLife = false ;

		public int MAX_LifePoint = 1 ;
		protected int lifePoint ;

		[SerializeField]
		private Animation _Animation ;
		[SerializeField]
		private Enemy_Spawner _s ;
		[SerializeField]
		private float movementSpeed = 1f ;


		private int index ;
		private Vector3 _tempPlayerPos ;

		public void set_EnemyIndex( int _i ) {
				index = _i ;
		}


		// Update is called once per frame
		virtual protected void Update () {
				if( is_InPool ) return ;

				_tempPlayerPos =  Character_Controller._position ;

				transform.LookAt( _tempPlayerPos, transform.up );
				transform.Translate(
						0f, 0f,movementSpeed, Space.Self );

				Get_PlayerDistance() ;

				if( _tempPlayerPos.z - transform.position.z > 10f ){
						End_ofLife() ;
				}
		}


		public virtual void Enable_Move( Vector2 _v) {
				transform.position= new Vector3(_v.x, 0f, _v.y);
				StartCoroutine( entranceAnimation() );
		}
		private IEnumerator entranceAnimation() {
				transform.LookAt( Vector3.zero, transform.up ) ;
				_Animation.Play("intro");
				while( _Animation.isPlaying ){
						transform.LookAt( _tempPlayerPos, transform.up );
						yield return null ;
				}

				is_InPool = false ;
				_Animation["walking"].wrapMode = WrapMode.Loop ;
				_Animation.Play("walking") ;
		}



		public virtual void Decrease_LifePoint( int hitPoints ){
				lifePoint -= hitPoints ;
				if( lifePoint<=0f ){
						End_ofLife() ;
				}
		}


		protected virtual void End_ofLife() {
				is_InPool = true ;
				is_EndOfLife = false ;
				lifePoint = MAX_LifePoint ;
				transform.localPosition = Vector3.zero;

				_Animation.Stop() ;

				if( _s == null  ) Destroy( gameObject );
				else _s.UnUse_Enemy( index );
		}

		private void OnTriggerEnter( Collider other ) {
				if( is_EndOfLife ) return ;

				is_EndOfLife = true ;
				StartCoroutine( PlayAnimation_AndDie() );
		}

		private IEnumerator PlayAnimation_AndDie() {
				//_Animation.CrossFade( "Jump") ;
				while( _Animation.isPlaying ) yield return null ;
				End_ofLife() ;
		}





		private void Get_PlayerDistance() {
				float distance = Vector3.Distance( transform.position, _tempPlayerPos );
				if( distance < Enemy_Spawner.KILLING_DISTANCE )
						Debug.Log("Deadsies");
		}
}







































