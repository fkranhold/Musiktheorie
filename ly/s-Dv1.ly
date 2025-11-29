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
      \key a \minor \relative c'' {
        \time 11/2
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            <b-5>2 <a-1> \bar "||"
            \key bes \major <a-3>\glissando <bes-1> \bar "||"
            \key b \minor <gis-5> <fis-1> <fis-1>2 \bar "||"
            \key g \major a2 <bes-9>( <b-6>4) <a-5> g2 \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <f-9>2\glissando <e-5>
            <es-7>\glissando <d-3> \bar "||"
            <d-9> \glissando <cis-5>
            <d-3>2 g <g-7>~ <g-4>4 <fis-3> d2
          }
        >> 
      }
    >>
    \new Staff \with { \omit TimeSignature } <<
      \key a \minor \clef "bass" \relative c' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            <d-7>2 \glissando <c-3>
            \key bes \major <ges-9>\glissando <f-5>
            \key b \minor <b-7>~ <b-4>4 <ais-3> <b-1>2
            \key g \major e2 <e-5> <d-1>2 b2
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <gis-3>2\glissando <a-1>
            <c,-5> <d-3>
            <eis-3>2\glissando <fis-1>
            <b,-1>2 c <cis-3>\glissando <d-1> g
          }
        >> 
      }
    >>
  >>
>>
