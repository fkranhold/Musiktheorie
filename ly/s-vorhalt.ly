\version "2.24.4"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/9)
  }
}
<<
  \new ChoirStaff <<
    \new Staff \with { \omit TimeSignature } <<
      \key c \major \relative c'' {
        \time 4/4
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            b2 c \bar "||" a2~ <a-6>4 <g-5> \bar "||" c2~ <c-4>4 <b-3>  \bar "||" b2~ <b-4>4 <a-3> \bar "||" gis2 a2  \bar "||" c b \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            g2 e f e g g d f e c a'2~ <a-4>4 <gis-3>
          }
        >> 
      }
    >>
    \new Staff \with { \omit TimeSignature } <<
      \clef "bass" \key c \major \relative c' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            d2~ <d-9>4 <c-8> c2 c e~ <e-6>4 <d-5> b2 c b2~ <b-9>4 <a-8> e'2 e
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            g, c, f c c g' g f e a, a' e
          }
        >> 
      }
    >>
  >>
>>
