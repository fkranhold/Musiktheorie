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
    \new Staff <<
      \key bes \major \relative c'' {
        <<
          {
            \voiceOne
            \partial 4 {bes4} bes a a \breathe bes bes a? bes2 \bar "|."
          }
          \new Voice {
            \voiceTwo
            \partial 4 {f4} e e f as4 g f8 es? d2
          }
        >> 
      }
    >>
    \new Staff <<
      \key bes \major\clef "bass" \relative c' {
        <<
          {
            \voiceOne
            \partial 4 {d4} d d8 cis d4 \breathe bes4 c?4 c bes2
          }
          \new Voice {
            \voiceTwo
            \partial 4 {bes8 a} g4 a d,4 d es4 f bes,2 
          }
        >> 
      }
    >>
  >>
>>
