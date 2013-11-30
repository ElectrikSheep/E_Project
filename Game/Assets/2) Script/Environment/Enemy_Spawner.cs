using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Enemy_Spawner : MonoBehaviour {


		public static float KILLING_DISTANCE ;

		public bool manage_OverFlow = false ;
		public int number_ToSpawn = 0 ;
		private static int EnemyCount ;

		[SerializeField]
		private GameObject _referencePrefab ;

		[SerializeField]
		private Transform _playerPos ;

		[SerializeField]
		private float killDistance = 10f ;


		[SerializeField] private float closeSpawnDistance = 20f ;
		[SerializeField] private float farSpawnDistance = 40f ;
		[SerializeField] private float wideSpawnDistance = 30f ;

		private Astronaut_Controller[] EnemyArray ;
		private BitArray idle_Enemy ;

		private int Initial_Capacity ;
		private int next_Available = 0 ;


		public void Start_NewWave( int num ){
				EnemyCount = 0 ;
				Spawn_Population( num ) ;
		}

		// Use this for initialization
		void Start () {
				KILLING_DISTANCE = killDistance ;

				//for( int i=0; i<transform.childCount; i++ ) 
				//	Instantiate( _referencePrefab, Get_RandomPosition(), Quaternion.identity );
				// Spawn_Population( number_ToSpawn ) ;
				EnemyArray = new Astronaut_Controller[transform.childCount] ;
				int i = 0;
				foreach( Astronaut_Controller _dc in GetComponentsInChildren<Astronaut_Controller>() ){
						EnemyArray[i] = _dc ;
						EnemyArray[i].set_EnemyIndex(i);
						i++;
				}
				idle_Enemy = new BitArray(EnemyArray.Length, true ) ;

				Spawn_Population( EnemyArray.Length );
		}
		private void Spawn_PopulationDUMB( int number ) {
				GameObject _g ;
				for( int i=0; i<number; i++ ) {
						_g = Instantiate( _referencePrefab, Get_RandomPosition(), Quaternion.identity ) as GameObject ;
						_g.SendMessage("Enable_Move", Get_RandomPosition(), SendMessageOptions.DontRequireReceiver );
				}
		}
		private void Spawn_Population( int number ) {
				int i = 0;
				while( i<number ){
						Use_Enemy() ;
						i++ ;
				}
		}

		private GameObject _temp;

	private void Update() {

				if( Input.GetKeyDown(KeyCode.A)){
						Spawn_Population( 1 ) ;
				}
	}


		private void Use_Enemy() {
				if( next_Available == -1 ){
						return ;
				}
				EnemyCount++ ;
				idle_Enemy[next_Available] = false ;
				EnemyArray[next_Available].Enable_Move( Get_RandomPosition() );

				next_Available = Get_NextAvailable() ;
		}

		private int Get_NextAvailable() {
				while( !idle_Enemy[next_Available]  ){
						next_Available ++ ;
						if( next_Available == idle_Enemy.Length ) return -1 ;
				}
				return next_Available ;
		}

		public void UnUse_Enemy( int _deadEnemy ){
				EnemyCount--;
				if( next_Available < 0) next_Available = _deadEnemy ;
				else next_Available = next_Available > _deadEnemy ? _deadEnemy : next_Available ;
				idle_Enemy[_deadEnemy] = true ;

				Use_Enemy() ;
		}

		private Vector2 Get_RandomPosition( ) {
				float angle = Random.Range(-wideSpawnDistance, wideSpawnDistance) ;
				float distance = Random.Range( 45f,85f);
				return new Vector2(
						_playerPos.position.x + angle ,//distance * Mathf.Cos( angle ),
						_playerPos.position.z + distance );//* Mathf.Sin( angle ) );
		}

}
