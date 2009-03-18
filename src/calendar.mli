(**************************************************************************)
(*                                                                        *)
(*  This file is part of Calendar.                                        *)
(*                                                                        *)
(*  Copyright (C) 2003-2009 Julien Signoles                               *)
(*                                                                        *)
(*  you can redistribute it and/or modify it under the terms of the GNU   *)
(*  Lesser General Public License version 2.1 as published by the         *)
(*  Free Software Foundation.                                             *)
(*                                                                        *)
(*  It is distributed in the hope that it will be useful,                 *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of        *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *)
(*  GNU Lesser General Public License for more details.                   *)
(*                                                                        *)
(*  See the GNU Lesser General Public Licence version 2.1 for more        *)
(*  details (enclosed in the file LGPL).                                  *)
(*                                                                        *)
(**************************************************************************)

(*i $Id$ i*)

(** Calendar implementation in which seconds are integer.

    This module uses float. Then results may be unprecise, especially
    comparison of calendars which differ with few seconds. 
    In this case, consider to use module [Precise]. *)

include Calendar_sig.S with module Date = Date and module Time = Time

(** More precise implementation of calendar in which seconds are integer. 
    @since 2.0 *)
module Precise: Calendar_sig.S with module Date = Date and module Time = Time
