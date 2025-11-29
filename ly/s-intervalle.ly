\version "2.24.4"
\include "layout.ily"

\score {
  <<
    \new Staff <<
      \relative c' { <e g>1 <c a'> <g' f'> <f bes> <b f'> <d, dis'> <des cis'> <gis es'> }
    >>
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
        }
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
    }
  }
}
  
