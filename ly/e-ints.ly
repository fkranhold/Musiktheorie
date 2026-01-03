\version "2.24.2"
\include "layout.ily"

<<
  \new Staff  \with { \omit TimeSignature } <<
    \relative c' {
      \time 4/4
      <f a>1 <fis e'> <gis es'> <gis dis'> <c dis>
    }
  >>
>>
