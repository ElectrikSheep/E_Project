using UnityEngine;
using System.Collections;

public class SEUI_Game : MonoBehaviour
{

		[SerializeField] private GameObject IDLE_Root;
		[SerializeField] private GameObject GAME_Root;
		[SerializeField] private GameObject DEAD_Root;

		[SerializeField] private TweenPosition[] _entranceAnimation;

		[SerializeField] private UILabel labelDistance;
		[SerializeField] private UILabel labelMaxDistance;
		private bool isPlaying = false;

		private void Start ()
		{
				Manager_ResetUI ();
				labelMaxDistance.text = "MAX DISTANCE\n" + PlayerProfile.Instance.GetValue_ForField (PlayerProfile.FIELDS.HIGHEST_SCORE);
		}

		private void Update ()
		{
				if (isPlaying)
						labelDistance.text = Get_Distance () + " meters";
		}

		private int Get_Distance ()
		{
				return (int)(Vector3.Distance (Vector3.zero, SE_PlayerController._position) / 10f);
		}

		public void Manager_StartGame ()
		{
				GAME_Root.SetActive (true);
				DEAD_Root.SetActive (false);
				isPlaying = true;
				_entranceAnimation [0].PlayForward ();
				_entranceAnimation [1].PlayForward ();
		}

		public void Manager_ResetUI ()
		{
				IDLE_Root.SetActive (true);
				GAME_Root.SetActive (false);
				DEAD_Root.SetActive (false);

				labelDistance.text = "distance\n0";
		}

		public void Manager_EndOfGame ()
		{
				isPlaying = false;
				IDLE_Root.SetActive (true);
				GAME_Root.SetActive (false);
				DEAD_Root.SetActive (true);

				_entranceAnimation [0].PlayReverse ();
				_entranceAnimation [1].PlayReverse ();

				int dist = Get_Distance ();
				if (dist > PlayerProfile.Instance.GetValue_ForField (PlayerProfile.FIELDS.HIGHEST_SCORE))
						labelMaxDistance.text = "MAX DISTANCE\n" + dist;
		}

		public int Manager_GetScore ()
		{
				return Get_Distance ();
		}

		public void onFinished_IntroSlider ()
		{
				if (isPlaying)
						IDLE_Root.SetActive (false);
		}

		public void BTNPressed_Home ()
		{
				Application.LoadLevel ("Menu");
		}
}
