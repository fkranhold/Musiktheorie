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
    (padding . 0)) } <<
      \new Staff <<
        \relative c'' {
          \time 4/4
          \voiceOne a4 d b c b a gis a \bar "|."
        }
      >>
      \new Staff <<
        \relative c' {
          \clef "bass"
          \time 4/4
          \voiceTwo a4 f g c, e f e a
        }
      >>
    >>
>>
