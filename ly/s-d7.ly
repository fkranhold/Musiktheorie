\version "2.24.4"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/11)
  }
}
<<
  \new ChoirStaff <<
    \new Staff <<
      \key c \major \relative c'' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            c4 <b-3> \glissando <c-1>2 \bar "||" \key bes \major bes4 bes <a-3>\glissando <bes-1> \bar "||" \key as \major as4 as bes as \bar "||" \key a \minor a a <gis-3>\glissando <a-1> \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            f <f-7>~ <f-4>4 <e-3> d4 es <es-7> f c des es es e f <e-8>8 <d-7> \glissando <c-3>4
          }
        >> 
      }
    >>
    \new Staff <<
      \key c \major\clef "bass" \relative c' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            a4 g g2 \bar "||" \key bes \major f4 g c <d-3> \bar "||" \key as \major es, f <g-3> \glissando <as-1> \bar "||" \key a \minor c d8 c b4 a
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            f4 g c,2 bes4 es f bes, as des <des-7>\glissando <c-3> a d e a,
          }
        >> 
      }
    >>
  >>
>>
