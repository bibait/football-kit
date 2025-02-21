public struct FootballTeam {
    public init() {}
}

public protocol Timer {
    func start(
        onSecondPassed: @escaping (Int) -> Void
    )
}

public class FootballMatch {
    private let _homeTeam: FootballTeam
    private let _awayTeam: FootballTeam
    private let _duration: Int

    public init(
        homeTeam: FootballTeam,
        awayTeam: FootballTeam,
        duration: Int
    ) {
        _homeTeam = homeTeam
        _awayTeam = awayTeam
        _duration = duration
    }
    
    internal var timer: Timer = FoundationTimer()
    
    public func start(
        onSecondPassed: @escaping (Int) -> Void
    ) {
        timer.start(onSecondPassed: onSecondPassed)
    }
}
