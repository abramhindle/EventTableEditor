package EventTableEditor;
class GrapherAlgoFactory {
	public static GrapherAlgo [] getAlgorithms() {
		GrapherAlgo serode = new ErodeAlgo();
		GrapherAlgo [] algos = new GrapherAlgo[]{
			new RandomizeAlgo(),
			new ErodeAlgo(),
			new PulsesAlgo(),
			new PulseEroderAlgo(),
			new BombardAlgo(),
			new PerforateAlgo(),
			new AverageAlgo(),
			new ZeroAlgo(),
			new SquareWaveAlgo(),
			new SineWaveAlgo(),
			new SawtoothWaveAlgo(),
			new TimedAlgo("Erosion",
				new GrapherAlgo[]{new ErodeAlgo()}
			),
			new TimedAlgo("Pulser",
				new GrapherAlgo[]{new PulsesAlgo()}
			),
			new TimedAlgo("CheeseCutter",
				new GrapherAlgo[]{new BombardAlgo()}
			),
			new TimedAlgo("Pulses",
				new GrapherAlgo[]{new ZeroAlgo(),new PulsesAlgo()}
			),
			new TimedAlgo("Randomizer",
				new GrapherAlgo[]{new RandomizeAlgo()}
			),
			new TimedAlgo("Terrainer",
				new GrapherAlgo[]{new RandomizeAlgo(),new AverageAlgo(),new ErodeAlgo(4)}
			),
			new TimedAlgo("SelectiveEroder",
				new GrapherAlgo[]{new SelectiveEroderAlgo()}
			),
			new TimedAlgo("Clearer",
				new GrapherAlgo[]{new ZeroAlgo()}
			),
			new TimedAlgo("Perforator",
				new GrapherAlgo[]{new PerforateAlgo()}
			),
			new TimedAlgo("RandomSine",
				new GrapherAlgo[]{new DefaultStartEndWavesAlgo(new SineWaveAlgo())}
			),
			new TimedAlgo("RandomSquare",
				new GrapherAlgo[]{new DefaultStartEndWavesAlgo(new SquareWaveAlgo())}
			),
			new TimedAlgo("RandomSaw",
				new GrapherAlgo[]{new DefaultStartEndWavesAlgo(new SawtoothWaveAlgo())}
			),
			new CyclicTimeAlgo("Square Wave Eroder",
				new Object[]{new SquareWaveAlgo(),new Integer(10),serode}
			),
			new CyclicTimeAlgo("Sine Wave Eroder",
				new Object[]{new SineWaveAlgo(),new Integer(10),serode}
			),
			new CyclicTimeAlgo("Sine Wave Perforated",
				new Object[]{new SineWaveAlgo(),new Integer(10),new BombardAlgo()}
			),
		};
		return algos;
	}
}
