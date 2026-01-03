\version "2.24.4"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/11)
    \remove "Time_signature_engraver"
  }
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \key c \major \relative c'' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            \time 2/2 <b-3>2\glissando <c-1> \bar "||" \time 3/2 c2~ c4 <b-3> \glissando <c-1>2 \bar "||" <b-3>\glissando <c-1> <b-3>\glissando <c-1> \bar "||" b a \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <f-7>2\glissando <e-3> f2\glissando <f-7>~ <f-4>4 <e-3> <f-7>2\glissando <g-5> g g <gis-3>\glissando <a-1>
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
            d2 c a2 g g2 d' e d c <d-7>\glissando <c-5>
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            g2 c, f2 g c,2 \time 2/2 g' c, <f-7>\glissando <e-3> e f
          }
        >> 
      }
    >>
  >>  
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}
