\version "2.24.4"
\include "layout.ily"

\layout {%
  \context {%
    \Score%
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/9)%
  }%
}%
<<
  \new ChoirStaff <<
    \new Staff \with { \omit TimeSignature } <<
      \relative c'' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            <b-3>2 \glissando <c-1> \bar "||" <gis-3>\glissando <a-1>\bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <f-7>2 \glissando <e-3> <d-7>\glissando <c-3>
          }
        >> 
      }
    >>
    \new Staff \with { \omit TimeSignature } <<
      \clef "bass" \relative c' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            <d-5>2 <e-3> <b-5> <c-3>
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <d,-5>2\glissando <c-1> <b-5>\glissando <a-1>
          }
        >> 
      }
    >>
  >>
>>
