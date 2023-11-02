---
title: "Default Values"
weight: 11
---

Elements of a disjunction may be marked as preferred.
If there is only one mark, or the users constraints a field enough such that
only one mark remains, that value is the default value.

In the example, `replicas` defaults to `1`.
In the case of `protocol`, however, there are multiple definitions with
different, mutually incompatible defaults.
In that case, both `"tcp"` and `"udp"` are preferred and one must explicitly
specify either `"tcp"` or `"udp"` as if no marks were given.

{{{with code "en" "defaults"}}}
#nofmt(in.cue) https://github.com/cue-lang/cue/issues/722

exec cue eval defaults.cue
cmp stdout result.txt
-- defaults.cue --
// any positive number, 1 is the default
replicas: uint | *1

// the default value is ambiguous
protocol: *"tcp" | "udp"
protocol: *"udp" | "tcp"
-- result.txt --
replicas: 1
protocol: "tcp" | "udp"
{{{end}}}