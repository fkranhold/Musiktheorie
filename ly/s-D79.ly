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
      \key g \major \relative c'' {
        \time 6/2
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            <e-9>2\glissando <d-5> \bar "||"
            <e-9>2\glissando <d-5> \bar "||"
            <c-7>\glissando <b-3> \bar "||"
            c <b-9>\glissando <a-5> g \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <fis-3>2\glissando <g-1>  <a-5> <b-3> <fis-3>\glissando <g-1> e4 fis <g-7>2~ <g-4>4 <fis-3> <d>2
          }
        >> 
      }
    >>
    \new Staff \with { \omit TimeSignature } <<
      \key g \major \clef "bass" \relative c' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            <c-7>2 \glissando <b-3> <c-7>\glissando <b-3> <e-9>\glissando <d-5> a <a-1> <a-5> b
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <d,-1> <g-1> <fis-3>\glissando <g-1> <d-1> <g-1> c, <cis-3>\glissando <d-1> g,
          }
        >> 
      }
    >>
  >>
>>
