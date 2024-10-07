#import "@local/mytemplate:1.0.0": *

#show: project.with(
  template: "book",
  title: " 电动力学",
  authors: (
    "Anzreww",
  ),
  time: "甲辰秋冬于清华园",
  contents:true,
  content_depth: 3,
)

#pagebreak(weak: true)

#include "chap1.typ"

#pagebreak(weak: true)

#include "chap2.typ"

#pagebreak(weak: true)

#include "chap3.typ"

#pagebreak(weak: true)

#include "chap4.typ"

#pagebreak(weak: true)

#include "appendix.typ"