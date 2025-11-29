\version "2.24.4"
\include "layout.ily"

\layout {%
  \context {%
    \Score%
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/11)%
  }%
}%
<<
  \new ChoirStaff <<
    \new Staff \with { \omit TimeSignature } <<
      \key d \minor \relative c'' {
        \time 3/2
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            <gis-3>2\glissando <a-1> <a-5> \bar "||" <gis-3>2\glissando <a-1> <a-5> \bar "||"  \key d \major <gis-3>\glissando <a-1> <a-5> \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <d,-7>2\glissando <cis-3> \glissando <d-1> \bar "||" <d-7>2~ <d-4>4 <cis-3> \glissando <d-1>2 \bar "||" <d-7> \glissando <cis-3>\glissando <d-1>
          }
        >> 
      }
    >>
    \new Staff \with { \omit TimeSignature } <<
      \key d \minor \clef "bass" \relative c' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            <f,-9>2 \glissando <e-5> <f-3> \bar "||" <f-9>2~ <f-6>4 <e-5> <f-3>2 \bar "||" \key d \major <f-9>\glissando <e-5> <fis-3>
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            <bes,-5>2\glissando <a-1> <d-1> <bes-5>2\glissando <a-1> <d-1> <bes-5>\glissando <a-1> <d-1>
          }
        >> 
      }
    >>
  >>
>>
