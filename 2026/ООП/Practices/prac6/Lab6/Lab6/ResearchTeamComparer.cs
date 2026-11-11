namespace Lab6;

internal class ResearchTeamComparer : IComparer<ResearchTeam>
{
    public int Compare(ResearchTeam? x, ResearchTeam? y)
    {
        if (x is null || y is null) throw new ArgumentException("Arguments cannot be null.");
        else
        {
            int countX,  countY;
            countX = x.Papers.Count;
            countY = y.Papers.Count;
            return countX.CompareTo(countY);
        }
    }
}