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
      \relative c' {
        \time 4/4
        \voiceOne \bar "|."
        \partial 4 {e4} a b c a b a gis2 a4 c b2 a2. \bar "|."
      }
    >>
    \new Staff <<
      \relative c' {
        \clef "bass"
        \time 4/4
        \voiceTwo
        \partial 4{s4} s1_\markup{\lower #3 \null} s s s2. %c,4 d e f g2 g, c1
      }
    >>
  >>
>>
