\version "2.24.2"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
  }
}
<<
  \new ChoirStaff \with { \override StaffGrouper.staff-staff-spacing = #'(
    (basic-distance . 10)
    (padding . 0)) }
  <<
    \new Staff <<
      \key f \major \relative c'' {
        \time 4/4
        \voiceOne \bar "|."
        a4 g f c' bes a g2 a4 a bes a g2 f2 \bar "|."
      }
    >>
    \new Staff <<
      \key f \major\relative c' {
        \clef "bass"
        \time 4/4
        \voiceTwo
        s1_\markup{\lower #3 \null} s s s %c,4 d e f g2 g, c1
      }
    >>
  >>
>>
