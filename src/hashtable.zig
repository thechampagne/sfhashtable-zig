// Copyright 2023 XXIV
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
pub const HASHTABLE_U32 = c_uint;

pub const hashtable_t = opaque {};

pub extern "C" fn hashtable_init(table: ?*hashtable_t, key_size: c_int, item_size: c_int, initial_capacity: c_int, memctx: ?*anyopaque) void;
pub extern "C" fn hashtable_term(table: ?*hashtable_t) void;
pub extern "C" fn hashtable_insert(table: ?*hashtable_t, hash: HASHTABLE_U32, key: ?*const anyopaque, item: ?*const anyopaque) void;
pub extern "C" fn hashtable_remove(table: ?*hashtable_t, hash: HASHTABLE_U32, key: ?*const anyopaque) void;
pub extern "C" fn hashtable_clear(table: ?*hashtable_t) void;
pub extern "C" fn hashtable_find(table: ?*const hashtable_t, hash: HASHTABLE_U32, key: ?*const anyopaque) ?*anyopaque;
pub extern "C" fn hashtable_count(table: ?*const hashtable_t) c_int;
pub extern "C" fn hashtable_items(table: ?*const hashtable_t) ?*anyopaque;
pub extern "C" fn hashtable_keys(table: ?*const hashtable_t) ?*const anyopaque;
pub extern "C" fn hashtable_swap(table: ?*hashtable_t, index_a: c_int, index_b: c_int) void;
