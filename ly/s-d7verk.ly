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
            <b-3>2 \glissando <c-1> \bar "||" <c-7>\glissando <bes-3>\bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <f-7>2 \glissando <e-3> \key g \minor <fis-3>\glissando <g-1>
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
            <d-5>2 <e-3> \key g \minor <a,-5> <g-1>
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <d-5>2\glissando <c-1> <a-5>\glissando <bes-3>
          }
        >> 
      }
    >>
  >>
>>
