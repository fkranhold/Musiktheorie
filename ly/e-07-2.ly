\version "2.24.2"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/9)
  }
}
<<
  \new ChoirStaff \with { \override StaffGrouper.staff-staff-spacing = #'(
    (basic-distance . 10)
    (padding . 0)) }
  <<
    \new Staff <<
      \key d \major \relative c'' {
        \time 4/4
        \voiceOne d cis b a b cis d2 \bar "|."
      }
    >>
    \new Staff <<
      \key d \major\relative c' {
        \clef "bass"
        \time 4/4
        \voiceTwo
        s1_\markup{\lower #3 \null} s %c,4 d e f g2 g, c1
      }
    >>
  >>
>>
