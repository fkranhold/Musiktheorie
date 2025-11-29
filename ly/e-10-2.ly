\version "2.24.2"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/7)
  }
}
<<
  \new ChoirStaff \with { \override StaffGrouper.staff-staff-spacing = #'(
    (basic-distance . 13)
    (padding . 0)) }
  <<
    \new Staff <<
      \key es \major \relative c'' {
        \time 4/4
        \voiceOne es, e f fis g g as a bes b c c des d es2 \bar "|."
      }
    >>
    \new Staff <<
      \key es \major \relative c' {
        \clef "bass"
        \time 4/4
        \voiceTwo es,4 c f d g es as f bes g c as des bes es2
      }
    >>
  >>
>>
