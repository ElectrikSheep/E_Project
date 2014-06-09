using UnityEngine;
using System.Collections;
using FIELD = PlayerProfile.FIELDS;

public class ES_GameController : MonoBehaviour
{

		private static ES_GameController _instance;

		public static ES_GameController Instance {
				get {
						if (_instance == null) {
								_instance = new ES_GameController ();
						} 
						return _instance;
				}
		}

		// Managing the Enemies controller
		[SerializeField] private ES_HordeController Necromancer;
		// Will Handle the UI like a boss
		[SerializeField] private SEUI_Game UIManager;
		// To stop the Player From moving sometimes (especially when Dead)
		[SerializeField] private SE_PlayerController PlayerController;
		// Stop the gyroscope when needed
		[SerializeField] private Camera_Controller Player_POV;

		[SerializeField] private Ground_Controller GroundManager;

		private enum STATE
		{
				IDLE,
				PLAYING,
				DEAD
		}

		private STATE currentState;
		private float timeElapsed = 0f;
		private uint shootInRow = 0;
		private uint highestStreak = 0;
		private int zombieKilled;
		private int currentMultiplier = 1;

		private void Awake ()
		{
				if (_instance != null)
						Destroy (gameObject);
				else
						_instance = this;
		}

		private void Start ()
		{
				currentState = STATE.IDLE;
				Player_POV.enabled = false;
				PlayerController.enabled = false;
		}

		public void BTNPressed_RestartGame ()
		{
				if (currentState == STATE.IDLE)
						return;

				currentState = STATE.IDLE;
				Player_POV.enabled = false;
				PlayerController.enabled = false;

				currentState = STATE.IDLE;
				timeElapsed = 0f;
				currentMultiplier = 1;
				shootInRow = 0;
				zombieKilled = 0;
		}

		/// <summary>
		/// Play the UI intro animation and start spawning zombies
		/// </summary>
		public void BTNPressed_StartGame ()
		{
				currentState = STATE.PLAYING;
				UIManager.Manager_StartGame ();
				Player_POV.enabled = true;
				PlayerController.enabled = true;
				PlayerController.Start_Game ();
				Camera_Desktop.Show_Cursor (false);
		}

		/// <summary>
		/// Go back to the Main Menu
		/// </summary>
		public void BTNPressed_MainMenu ()
		{
				Application.LoadLevel ("Menu");
		}

		/// <summary>
		/// Function called once a Zombie gets too close to the User
		/// Trigger end of game event
		/// </summary>
		public void MANAGER_TriggerEndOfGame ()
		{
				Debug.Log ("End Of game");
				currentState = STATE.DEAD;
				transform.audio.Play ();
				PlayerController.Stop_Game ();
				Player_POV.enabled = false;
				if (highestStreak == 0)
						highestStreak = shootInRow;
				UIManager.Manager_EndOfGame ();
				Necromancer.Reset_Difficulty ();
				Camera_Desktop.Show_Cursor (true);
				GroundManager.Restart ();

				Analytics_RegisterInfo ();
		}

		private void Update ()
		{
				switch (currentState) {
				case STATE.DEAD:
						break;
				case STATE.IDLE:
						break;
				case STATE.PLAYING:
						timeElapsed += Time.deltaTime;
						Check_ForNewZombie ();
						break;
				}
		}

		/// <summary>
		/// Function to call when the user successfuly shoot a target
		/// </summary>
		/// <param name="score">Score value of the target</param>
		/// <param name="critical">If set to <c>true</c> critical.</param>
		public void MANAGER_TargetHit (int score, bool critical)
		{
				shootInRow++;
		}

		/// <summary>
		/// Function to call when user misses a shot 
		/// It will break the current streak and restart the multiplier
		/// </summary>
		public void MANAGER_TargetMiss ()
		{
				highestStreak = highestStreak > shootInRow ? highestStreak : shootInRow;
				shootInRow = 0;
				currentMultiplier = 1;
		}

		/// <summary>
		/// Zombie was killed, Increment total body count
		/// </summary>
		public void MANAGER_IncrementDeathCount ()
		{
				zombieKilled++;
		}

		private void Check_ForNewZombie ()
		{
				Necromancer.Check_ForZombieSpawn (timeElapsed);
		}

		/// <summary>
		/// Register all infos when user dies
		/// and Publish to GameAnalytics some data
		/// </summary>
		private void Analytics_RegisterInfo ()
		{
				GA.API.Design.NewEvent ("ZombiFrags", zombieKilled);
				GA.API.Design.NewEvent ("HighScore", UIManager.Manager_GetScore ());
				GA.API.Design.NewEvent ("LongestStreak", highestStreak);
				GA.API.Design.NewEvent ("TimePlaying", timeElapsed);

				//DataGate.Instance.Save_PlayerProfile (UIManager.Manager_GetScore (), checked((int)highestStreak), zombieKilled);
				//PlayerProfile.Instance.Update_ForFieldS( {}, {} );

				PlayerProfile.Instance.Update_ProfileForField (FIELD.BODY_COUNT, zombieKilled);
				PlayerProfile.Instance.Update_ProfileForField (FIELD.HIGHEST_SCORE, UIManager.Manager_GetScore ());
				PlayerProfile.Instance.Update_ProfileForField (FIELD.HIGHEST_STREAK, checked((int)highestStreak));
		}

		#if UNITY_EDITOR
		private void CheckForInput ()
		{
				if (!isGamePaused && !Screen.lockCursor)
						Screen.lockCursor = true;
				if (Input.GetKeyDown (KeyCode.Escape)) {
						Time.timeScale = isGamePaused ? 1f : 0f;
						isGamePaused = !isGamePaused;
						Camera_Desktop.Show_Cursor (!isGamePaused);
				}
		}

		private bool isGamePaused = false;
		#else
		
		private void CheckForInput ()
		{

		}
		#endif
}
