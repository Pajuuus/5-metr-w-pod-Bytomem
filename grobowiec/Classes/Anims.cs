namespace grobowiec.Classes;

// super klasa zeby latwiej uzywac animacji
public static class Anims
{
    
    // na przyklad na promocje takie jak kremacje 20% taniej
    public static void StartPulse(this VisualElement target, double maxScale = 1.06, uint duration = 900)
    {
        target.StopPulse();

        var pulse = new Animation();
        pulse.Add(0.0, 0.5, new Animation(v => target.Scale = v, 1.0, maxScale, Easing.CubicOut));
        pulse.Add(0.5, 1.0, new Animation(v => target.Scale = v, maxScale, 1.0, Easing.CubicIn));

        pulse.Commit(
            owner: target,
            name: "PulseAnim",
            length: duration,
            repeat: () => true
        );
    }

    // stopuje (no shit)
    public static void StopPulse(this VisualElement target)
    {
        target.AbortAnimation("PulseAnim");
        target.Scale = 1.0;
    }
    
    // Shake jakbys cos zjebal
    public static void Shake(this VisualElement target, double offset = 14, uint duration = 400, bool repeat = true)
    {
        target.AbortAnimation("ShakeAnim");

        var shake = new Animation();
        shake.Add(0.00, 0.20, new Animation(v => target.TranslationX = v, 0, -offset));
        shake.Add(0.20, 0.40, new Animation(v => target.TranslationX = v, -offset, offset));
        shake.Add(0.40, 0.60, new Animation(v => target.TranslationX = v, offset, -offset / 2));
        shake.Add(0.60, 0.80, new Animation(v => target.TranslationX = v, -offset / 2, offset / 2));
        shake.Add(0.80, 1.00, new Animation(v => target.TranslationX = v, offset / 2, 0));

        shake.Commit(
            owner: target,
            name: "ShakeAnim",
            length: duration,
            finished: (v, c) => target.TranslationX = 0,
            repeat: () => repeat
        );
    }
    
    // scalowanie on click
    public static async Task BounceClickAsync(this VisualElement target)
    {
        await target.ScaleTo(0.98, 90, Easing.SinOut);
        await target.ScaleTo(1.0, 120, Easing.SinOut);
    }
    
    // nie uwierzysz... to kreci
    public static void StartSpin(this VisualElement target, uint duration = 1000)
    {
        target.StopSpin();

        var rotate = new Animation(v => target.Rotation = v, 0, 360, Easing.Linear);
        rotate.Commit(
            owner: target,
            name: "SpinnerAnim",
            length: duration,
            finished: (v, c) => target.Rotation = 0,
            repeat: () => true
        );
    }

    // a to juz nie
    public static void StopSpin(this VisualElement target)
    {
        target.AbortAnimation("SpinnerAnim");
        target.Rotation = 0;
    }
}