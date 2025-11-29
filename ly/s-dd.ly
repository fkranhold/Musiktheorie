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
            \partial 4 {bes4} bes bes bes a bes g a bes a g a bes c c bes4 \bar "|."
          }
          \new Voice {
            \voiceTwo
            \partial 4 {f4} g g f2 f4 e f g f e f f e f4 f4
          }
        >> 
      }
    >>
    \new Staff <<
      \key bes \major\clef "bass" \relative c' {
        <<
          {
            \voiceOne
            \partial 4 {d4} c c d c d c c c c bes c d e f8 es d4
          }
          \new Voice {
            \voiceTwo
            \partial 4 {bes,4} es e f2 bes,4 c f e f g f bes, bes a bes
          }
        >> 
      }
    >>
  >>
>>
