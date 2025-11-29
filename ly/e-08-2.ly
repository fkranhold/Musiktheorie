\version "2.24.2"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/14)  
  }
}
<<
  \new ChoirStaff \with { \override StaffGrouper.staff-staff-spacing = #'(
    (basic-distance . 10)
    (padding . 0)) }
  <<
    \new Staff <<
      \relative c'' {
        \time 4/4
        \key c \major
        <<
          {
            \voiceOne
            c4 c b a a g g2 \bar "|."
          }
          \new Voice {
            \voiceTwo
            e4 g g e f d e2
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \relative c' {
        <<
          {
            \voiceOne
            c4 c d c c b c2
          }
          \new Voice {
            \voiceTwo
            c,4 e g a f g c,2
          }
        >> 
      }
    >>
  >>
>>
