% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, waves, [[task(t1, [], const(0)), task(t2, [], const(3)), task(t3, [t2], max), task(t4, [t1, t3], max), task(t5, [t2, t3], inc), task(t6, [t1, t2, t3, t4, t5], sum)]], [[t1, t2], [t3], [t4, t5], [t6]]).
io(2, run_waves, [[task(t1, [], const(1)), task(t2, [t1], sum), task(t3, [t2], max), task(t4, [t1, t3], sum), task(t5, [t2, t4], sum), task(t6, [t3, t4, t5], product)]], [t1-1, t2-1, t3-1, t4-2, t5-3, t6-6]).
io(3, critical_path, [[task(t1, [], const(0)), task(t2, [], const(2))]], 1).
io(4, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [], const(0)), task(t3, [t2], product), task(t4, [t1, t3], max)]], same_as_waves(true)).
io(5, waves, [[task(t1, [], const(3)), task(t2, [t1], max), task(t3, [], const(4))]], [[t1, t3], [t2]]).
io(6, run_waves, [[task(t1, [], const(0)), task(t2, [t1], sum), task(t3, [t1, t2], inc), task(t4, [t1, t2, t3], product)]], [t1-0, t2-0, t3-1, t4-0]).
io(7, critical_path, [[task(t1, [], const(1)), task(t2, [t1], sum), task(t3, [t2], inc), task(t4, [t2, t3], product), task(t5, [t1, t4], sum), task(t6, [t3, t5], product)]], 6).
io(8, run_reversed_valid, [[task(t1, [], const(1)), task(t2, [], const(5)), task(t3, [t1, t2], inc), task(t4, [t3], sum), task(t5, [t2, t3], inc), task(t6, [t1, t3], product)]], same_as_waves(true)).
io(9, waves, [[task(t1, [], const(1)), task(t2, [], const(2)), task(t3, [t1, t2], inc), task(t4, [], const(0)), task(t5, [t1, t2, t3], product), task(t6, [t1, t3, t5], max)]], [[t1, t2, t4], [t3], [t5], [t6]]).
io(10, run_waves, [[task(t1, [], const(2)), task(t2, [t1], sum), task(t3, [t1], inc), task(t4, [t3], sum)]], [t1-2, t2-2, t3-3, t4-3]).
io(11, critical_path, [[task(t1, [], const(0)), task(t2, [t1], max)]], 2).
io(12, run_reversed_valid, [[task(t1, [], const(0)), task(t2, [t1], max)]], same_as_waves(true)).
io(13, waves, [[task(t1, [], const(3)), task(t2, [t1], inc), task(t3, [], const(5)), task(t4, [t1, t2], inc), task(t5, [t1, t4], inc), task(t6, [t1, t3, t5], max)]], [[t1, t3], [t2], [t4], [t5], [t6]]).
io(14, run_waves, [[task(t1, [], const(2)), task(t2, [], const(3))]], [t1-2, t2-3]).
io(15, critical_path, [[task(t1, [], const(2)), task(t2, [t1], product), task(t3, [t2], max)]], 3).
io(16, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [], const(2)), task(t3, [], const(3))]], same_as_waves(true)).
io(17, waves, [[task(t1, [], const(4)), task(t2, [], const(4)), task(t3, [t1, t2], product)]], [[t1, t2], [t3]]).
io(18, run_waves, [[task(t1, [], const(1)), task(t2, [], const(5)), task(t3, [t1], sum), task(t4, [], const(4)), task(t5, [t4], sum), task(t6, [t2, t3, t4], max)]], [t1-1, t2-5, t3-1, t4-4, t5-4, t6-5]).
io(19, critical_path, [[task(t1, [], const(4)), task(t2, [], const(0)), task(t3, [t2], sum), task(t4, [t1, t2], max), task(t5, [t2, t4], inc), task(t6, [t2, t3], product)]], 3).
io(20, run_reversed_valid, [[task(t1, [], const(0)), task(t2, [t1], product), task(t3, [t1, t2], max), task(t4, [t1, t2], product), task(t5, [t1], product), task(t6, [t3, t4], product)]], same_as_waves(true)).
io(21, waves, [[task(t1, [], const(3)), task(t2, [], const(4)), task(t3, [], const(3)), task(t4, [t2], product), task(t5, [t2, t3, t4], inc), task(t6, [t1, t3, t4, t5], sum)]], [[t1, t2, t3], [t4], [t5], [t6]]).
io(22, run_waves, [[task(t1, [], const(1)), task(t2, [t1], sum), task(t3, [t1], product), task(t4, [t1], product)]], [t1-1, t2-1, t3-1, t4-1]).
io(23, critical_path, [[task(t1, [], const(3)), task(t2, [], const(5)), task(t3, [t1, t2], product), task(t4, [t1, t3], product), task(t5, [t1, t2, t3, t4], inc), task(t6, [t3, t4, t5], sum)]], 5).
io(24, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [t1], inc), task(t3, [], const(5))]], same_as_waves(true)).
io(25, waves, [[task(t1, [], const(4)), task(t2, [t1], max), task(t3, [t1], sum), task(t4, [t2], max), task(t5, [t2, t3, t4], product)]], [[t1], [t2, t3], [t4], [t5]]).
io(26, run_waves, [[task(t1, [], const(2)), task(t2, [], const(2)), task(t3, [t1, t2], product)]], [t1-2, t2-2, t3-4]).
io(27, critical_path, [[task(t1, [], const(4)), task(t2, [t1], max), task(t3, [], const(3)), task(t4, [t3], max)]], 2).
io(28, run_reversed_valid, [[task(t1, [], const(4)), task(t2, [t1], product), task(t3, [], const(1)), task(t4, [t1], product), task(t5, [t1, t2, t3, t4], product), task(t6, [t1, t3, t5], sum)]], same_as_waves(true)).
io(29, waves, [[task(t1, [], const(0)), task(t2, [t1], inc), task(t3, [t2], product), task(t4, [t2, t3], sum)]], [[t1], [t2], [t3], [t4]]).
io(30, run_waves, [[task(t1, [], const(4)), task(t2, [t1], max), task(t3, [], const(0))]], [t1-4, t2-4, t3-0]).
io(31, critical_path, [[task(t1, [], const(0)), task(t2, [t1], sum)]], 2).
io(32, run_reversed_valid, [[task(t1, [], const(2)), task(t2, [], const(3)), task(t3, [t1], max), task(t4, [t1, t2], max), task(t5, [t4], inc), task(t6, [t1, t4], sum)]], same_as_waves(true)).
io(33, waves, [[task(t1, [], const(4)), task(t2, [], const(3)), task(t3, [t1], sum), task(t4, [t1, t2], sum)]], [[t1, t2], [t3, t4]]).
io(34, run_waves, [[task(t1, [], const(5)), task(t2, [], const(1)), task(t3, [], const(5))]], [t1-5, t2-1, t3-5]).
io(35, critical_path, [[task(t1, [], const(5)), task(t2, [t1], inc)]], 2).
io(36, run_reversed_valid, [[task(t1, [], const(3)), task(t2, [], const(2)), task(t3, [t1], sum), task(t4, [t2, t3], max), task(t5, [t1, t2], inc)]], same_as_waves(true)).
io(37, waves, [[task(t1, [], const(1)), task(t2, [], const(5)), task(t3, [t1, t2], product), task(t4, [t1], max), task(t5, [t4], inc)]], [[t1, t2], [t3, t4], [t5]]).
io(38, run_waves, [[task(t1, [], const(1)), task(t2, [t1], sum), task(t3, [t1, t2], product), task(t4, [t1, t3], max), task(t5, [t2, t3], inc), task(t6, [t1, t2, t4], sum)]], [t1-1, t2-1, t3-1, t4-1, t5-3, t6-3]).
io(39, critical_path, [[task(t1, [], const(0)), task(t2, [], const(5))]], 1).
io(40, run_reversed_valid, [[task(t1, [], const(4)), task(t2, [], const(0))]], same_as_waves(true)).
io(41, waves, [[task(t1, [], const(4)), task(t2, [t1], sum), task(t3, [t2], product), task(t4, [t2], inc), task(t5, [t2, t4], inc)]], [[t1], [t2], [t3, t4], [t5]]).
io(42, run_waves, [[task(t1, [], const(4)), task(t2, [], const(0))]], [t1-4, t2-0]).
io(43, critical_path, [[task(t1, [], const(4)), task(t2, [], const(2)), task(t3, [], const(0)), task(t4, [t2], inc)]], 2).
io(44, run_reversed_valid, [[task(t1, [], const(3)), task(t2, [], const(5)), task(t3, [t1], product), task(t4, [t1, t2, t3], product), task(t5, [t4], sum)]], same_as_waves(true)).
io(45, waves, [[task(t1, [], const(2)), task(t2, [], const(0))]], [[t1, t2]]).
io(46, run_waves, [[task(t1, [], const(2)), task(t2, [], const(1))]], [t1-2, t2-1]).
io(47, critical_path, [[task(t1, [], const(2)), task(t2, [], const(2)), task(t3, [t1, t2], sum), task(t4, [t1, t3], sum), task(t5, [t1, t4], inc)]], 4).
io(48, run_reversed_valid, [[task(t1, [], const(3)), task(t2, [t1], product)]], same_as_waves(true)).
io(49, waves, [[task(t1, [], const(4)), task(t2, [t1], inc), task(t3, [t1], product)]], [[t1], [t2, t3]]).
io(50, run_waves, [[task(t1, [], const(2)), task(t2, [t1], inc), task(t3, [t1, t2], sum), task(t4, [t3], max), task(t5, [t1], product), task(t6, [t1, t3, t4, t5], inc)]], [t1-2, t2-3, t3-5, t4-5, t5-2, t6-15]).
io(51, critical_path, [[task(t1, [], const(1)), task(t2, [], const(3)), task(t3, [t1], max)]], 2).
io(52, run_reversed_valid, [[task(t1, [], const(4)), task(t2, [], const(2)), task(t3, [], const(1)), task(t4, [t1, t2, t3], sum), task(t5, [t1, t2, t3, t4], inc), task(t6, [t1, t4], max)]], same_as_waves(true)).
io(53, waves, [[task(t1, [], const(4)), task(t2, [t1], inc), task(t3, [], const(0)), task(t4, [t1, t3], sum), task(t5, [t1, t2, t3, t4], sum), task(t6, [], const(3))]], [[t1, t3, t6], [t2, t4], [t5]]).
io(54, run_waves, [[task(t1, [], const(1)), task(t2, [t1], max), task(t3, [t1], max)]], [t1-1, t2-1, t3-1]).
io(55, critical_path, [[task(t1, [], const(5)), task(t2, [], const(4)), task(t3, [], const(1)), task(t4, [], const(3)), task(t5, [t4], max)]], 2).
io(56, run_reversed_valid, [[task(t1, [], const(3)), task(t2, [], const(4)), task(t3, [t1], max), task(t4, [t1, t2], product), task(t5, [t4], max)]], same_as_waves(true)).
io(57, waves, [[task(t1, [], const(4)), task(t2, [], const(3)), task(t3, [t2], inc)]], [[t1, t2], [t3]]).
io(58, run_waves, [[task(t1, [], const(0)), task(t2, [t1], product)]], [t1-0, t2-0]).
io(59, critical_path, [[task(t1, [], const(2)), task(t2, [t1], max), task(t3, [], const(0)), task(t4, [t1, t3], max), task(t5, [t3, t4], product)]], 3).
io(60, run_reversed_valid, [[task(t1, [], const(0)), task(t2, [t1], sum), task(t3, [], const(4)), task(t4, [t2, t3], sum), task(t5, [t1, t4], product), task(t6, [t1, t5], product)]], same_as_waves(true)).
io(61, waves, [[task(t1, [], const(2)), task(t2, [], const(5))]], [[t1, t2]]).
io(62, run_waves, [[task(t1, [], const(1)), task(t2, [], const(2))]], [t1-1, t2-2]).
io(63, critical_path, [[task(t1, [], const(3)), task(t2, [t1], inc), task(t3, [], const(5)), task(t4, [], const(2)), task(t5, [t2, t3, t4], max)]], 3).
io(64, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [], const(2)), task(t3, [t2], inc), task(t4, [t2, t3], product), task(t5, [t2, t3], product)]], same_as_waves(true)).
io(65, waves, [[task(t1, [], const(5)), task(t2, [], const(4)), task(t3, [], const(3)), task(t4, [], const(2))]], [[t1, t2, t3, t4]]).
io(66, run_waves, [[task(t1, [], const(3)), task(t2, [], const(2)), task(t3, [t1, t2], product)]], [t1-3, t2-2, t3-6]).
io(67, critical_path, [[task(t1, [], const(3)), task(t2, [], const(1))]], 1).
io(68, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [], const(3)), task(t3, [t1], max), task(t4, [], const(4))]], same_as_waves(true)).
io(69, waves, [[task(t1, [], const(1)), task(t2, [t1], sum)]], [[t1], [t2]]).
io(70, run_waves, [[task(t1, [], const(5)), task(t2, [], const(2))]], [t1-5, t2-2]).
io(71, critical_path, [[task(t1, [], const(0)), task(t2, [], const(5))]], 1).
io(72, run_reversed_valid, [[task(t1, [], const(0)), task(t2, [], const(0)), task(t3, [t1, t2], max)]], same_as_waves(true)).
io(73, waves, [[task(t1, [], const(1)), task(t2, [t1], sum), task(t3, [t1, t2], max)]], [[t1], [t2], [t3]]).
io(74, run_waves, [[task(t1, [], const(5)), task(t2, [t1], max), task(t3, [t1], product), task(t4, [t1], sum)]], [t1-5, t2-5, t3-5, t4-5]).
io(75, critical_path, [[task(t1, [], const(0)), task(t2, [t1], product)]], 2).
io(76, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [], const(0)), task(t3, [], const(0)), task(t4, [t2], max), task(t5, [], const(3))]], same_as_waves(true)).
io(77, waves, [[task(t1, [], const(4)), task(t2, [], const(5)), task(t3, [t1], product), task(t4, [t1, t2, t3], max)]], [[t1, t2], [t3], [t4]]).
io(78, run_waves, [[task(t1, [], const(4)), task(t2, [], const(1)), task(t3, [t2], inc), task(t4, [t1, t3], max), task(t5, [t1], inc)]], [t1-4, t2-1, t3-2, t4-4, t5-5]).
io(79, critical_path, [[task(t1, [], const(2)), task(t2, [], const(4))]], 1).
io(80, run_reversed_valid, [[task(t1, [], const(4)), task(t2, [], const(4)), task(t3, [t1], sum), task(t4, [t1], product), task(t5, [t1, t3], sum)]], same_as_waves(true)).
io(81, waves, [[task(t1, [], const(3)), task(t2, [], const(3)), task(t3, [t2], inc)]], [[t1, t2], [t3]]).
io(82, run_waves, [[task(t1, [], const(2)), task(t2, [], const(1)), task(t3, [], const(5))]], [t1-2, t2-1, t3-5]).
io(83, critical_path, [[task(t1, [], const(2)), task(t2, [t1], product), task(t3, [t2], product)]], 3).
io(84, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [], const(4)), task(t3, [t2], product), task(t4, [t2], inc)]], same_as_waves(true)).
io(85, waves, [[task(t1, [], const(4)), task(t2, [], const(0)), task(t3, [t2], inc), task(t4, [t2, t3], product), task(t5, [t1, t2, t3], inc), task(t6, [t1, t4, t5], sum)]], [[t1, t2], [t3], [t4, t5], [t6]]).
io(86, run_waves, [[task(t1, [], const(3)), task(t2, [t1], inc), task(t3, [t1, t2], inc), task(t4, [t2, t3], product), task(t5, [t1, t2, t4], max)]], [t1-3, t2-4, t3-8, t4-32, t5-32]).
io(87, critical_path, [[task(t1, [], const(5)), task(t2, [], const(4)), task(t3, [], const(4)), task(t4, [t1, t3], inc), task(t5, [t1, t4], sum), task(t6, [t4], sum)]], 3).
io(88, run_reversed_valid, [[task(t1, [], const(2)), task(t2, [], const(2)), task(t3, [t2], inc)]], same_as_waves(true)).
io(89, waves, [[task(t1, [], const(1)), task(t2, [t1], product), task(t3, [t2], inc), task(t4, [], const(2)), task(t5, [t1, t4], max)]], [[t1, t4], [t2, t5], [t3]]).
io(90, run_waves, [[task(t1, [], const(2)), task(t2, [t1], sum), task(t3, [], const(4))]], [t1-2, t2-2, t3-4]).
io(91, critical_path, [[task(t1, [], const(5)), task(t2, [], const(4)), task(t3, [t2], sum), task(t4, [t2], inc)]], 2).
io(92, run_reversed_valid, [[task(t1, [], const(2)), task(t2, [t1], sum), task(t3, [], const(0)), task(t4, [t1, t2], product), task(t5, [t2, t4], sum)]], same_as_waves(true)).
io(93, waves, [[task(t1, [], const(4)), task(t2, [t1], sum), task(t3, [t1, t2], inc), task(t4, [t1, t2], product), task(t5, [t1, t3, t4], product)]], [[t1], [t2], [t3, t4], [t5]]).
io(94, run_waves, [[task(t1, [], const(3)), task(t2, [t1], sum), task(t3, [t2], inc), task(t4, [t2], sum), task(t5, [t2, t3], max), task(t6, [t4], max)]], [t1-3, t2-3, t3-4, t4-3, t5-4, t6-3]).
io(95, critical_path, [[task(t1, [], const(1)), task(t2, [t1], inc), task(t3, [], const(0)), task(t4, [], const(3)), task(t5, [t1, t3], sum), task(t6, [t3, t5], max)]], 3).
io(96, run_reversed_valid, [[task(t1, [], const(1)), task(t2, [t1], sum), task(t3, [t1, t2], sum), task(t4, [t1, t2, t3], product)]], same_as_waves(true)).
io(97, waves, [[task(t1, [], const(1)), task(t2, [], const(0)), task(t3, [], const(2))]], [[t1, t2, t3]]).
io(98, run_waves, [[task(t1, [], const(5)), task(t2, [t1], product), task(t3, [t1], sum), task(t4, [], const(3)), task(t5, [t1, t2, t4], max)]], [t1-5, t2-5, t3-5, t4-3, t5-5]).
io(99, critical_path, [[task(t1, [], const(0)), task(t2, [], const(3)), task(t3, [t1, t2], product)]], 2).
io(100, run_reversed_valid, [[task(t1, [], const(1)), task(t2, [], const(4)), task(t3, [t2], sum), task(t4, [t1, t3], inc), task(t5, [t2, t3], inc)]], same_as_waves(true)).
io(101, waves, [[task(t1, [], const(2)), task(t2, [], const(4))]], [[t1, t2]]).
io(102, run_waves, [[task(t1, [], const(1)), task(t2, [t1], sum), task(t3, [t2], sum), task(t4, [t2, t3], inc)]], [t1-1, t2-1, t3-1, t4-3]).
io(103, critical_path, [[task(t1, [], const(3)), task(t2, [t1], product), task(t3, [t1, t2], max), task(t4, [t1, t3], product)]], 4).
io(104, run_reversed_valid, [[task(t1, [], const(3)), task(t2, [], const(3)), task(t3, [t1], sum), task(t4, [t2], max), task(t5, [t3, t4], sum), task(t6, [t1, t2, t4], max)]], same_as_waves(true)).
io(105, waves, [[task(t1, [], const(0)), task(t2, [], const(0)), task(t3, [t1], sum), task(t4, [], const(2)), task(t5, [t2, t4], inc), task(t6, [t1, t5], product)]], [[t1, t2, t4], [t3, t5], [t6]]).
io(106, run_waves, [[task(t1, [], const(4)), task(t2, [], const(3)), task(t3, [], const(0)), task(t4, [t2, t3], product)]], [t1-4, t2-3, t3-0, t4-0]).
io(107, critical_path, [[task(t1, [], const(2)), task(t2, [], const(5)), task(t3, [], const(0)), task(t4, [t1, t3], product), task(t5, [t1, t3, t4], max)]], 3).
io(108, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [], const(4)), task(t3, [t1], inc), task(t4, [], const(1)), task(t5, [t2, t3, t4], sum)]], same_as_waves(true)).
io(109, waves, [[task(t1, [], const(4)), task(t2, [], const(4)), task(t3, [t1], max)]], [[t1, t2], [t3]]).
io(110, run_waves, [[task(t1, [], const(5)), task(t2, [t1], max), task(t3, [], const(3))]], [t1-5, t2-5, t3-3]).
io(111, critical_path, [[task(t1, [], const(5)), task(t2, [], const(5)), task(t3, [], const(0)), task(t4, [t1], sum), task(t5, [t3], inc)]], 2).
io(112, run_reversed_valid, [[task(t1, [], const(4)), task(t2, [], const(4))]], same_as_waves(true)).
io(113, waves, [[task(t1, [], const(5)), task(t2, [], const(3)), task(t3, [t2], inc), task(t4, [t1, t2, t3], max), task(t5, [t2], inc)]], [[t1, t2], [t3, t5], [t4]]).
io(114, run_waves, [[task(t1, [], const(2)), task(t2, [], const(5)), task(t3, [t2], product)]], [t1-2, t2-5, t3-5]).
io(115, critical_path, [[task(t1, [], const(2)), task(t2, [t1], sum)]], 2).
io(116, run_reversed_valid, [[task(t1, [], const(0)), task(t2, [t1], inc)]], same_as_waves(true)).
io(117, waves, [[task(t1, [], const(2)), task(t2, [t1], inc), task(t3, [], const(3)), task(t4, [t1], inc), task(t5, [t3], sum)]], [[t1, t3], [t2, t4, t5]]).
io(118, run_waves, [[task(t1, [], const(4)), task(t2, [], const(5)), task(t3, [], const(2)), task(t4, [t2], product), task(t5, [t1, t3], sum)]], [t1-4, t2-5, t3-2, t4-5, t5-6]).
io(119, critical_path, [[task(t1, [], const(2)), task(t2, [t1], inc), task(t3, [t2], product)]], 3).
io(120, run_reversed_valid, [[task(t1, [], const(4)), task(t2, [], const(2)), task(t3, [t1], inc), task(t4, [t2, t3], max), task(t5, [t1], product), task(t6, [t1], max)]], same_as_waves(true)).
io(121, waves, [[task(t1, [], const(5)), task(t2, [], const(4))]], [[t1, t2]]).
io(122, run_waves, [[task(t1, [], const(2)), task(t2, [], const(5)), task(t3, [t1, t2], inc), task(t4, [t1, t3], sum), task(t5, [t3, t4], product), task(t6, [t2, t3, t5], sum)]], [t1-2, t2-5, t3-8, t4-10, t5-80, t6-93]).
io(123, critical_path, [[task(t1, [], const(3)), task(t2, [t1], inc)]], 2).
io(124, run_reversed_valid, [[task(t1, [], const(2)), task(t2, [], const(2)), task(t3, [t1], inc), task(t4, [t1, t3], max), task(t5, [t1, t4], product), task(t6, [t1, t2, t3, t4], inc)]], same_as_waves(true)).
io(125, waves, [[task(t1, [], const(3)), task(t2, [t1], product)]], [[t1], [t2]]).
io(126, run_waves, [[task(t1, [], const(1)), task(t2, [], const(5)), task(t3, [t1, t2], product), task(t4, [t1, t3], product), task(t5, [t1, t2, t3], inc)]], [t1-1, t2-5, t3-5, t4-5, t5-12]).
io(127, critical_path, [[task(t1, [], const(0)), task(t2, [], const(3)), task(t3, [t1], inc), task(t4, [], const(1)), task(t5, [t2, t4], product)]], 2).
io(128, run_reversed_valid, [[task(t1, [], const(4)), task(t2, [t1], max)]], same_as_waves(true)).
io(129, waves, [[task(t1, [], const(5)), task(t2, [], const(0)), task(t3, [t1, t2], max), task(t4, [t1, t3], sum), task(t5, [t1, t2, t3, t4], inc), task(t6, [t2, t3, t5], product)]], [[t1, t2], [t3], [t4], [t5], [t6]]).
io(130, run_waves, [[task(t1, [], const(0)), task(t2, [], const(5))]], [t1-0, t2-5]).
io(131, critical_path, [[task(t1, [], const(4)), task(t2, [], const(4)), task(t3, [], const(0)), task(t4, [t1], max)]], 2).
io(132, run_reversed_valid, [[task(t1, [], const(3)), task(t2, [], const(4)), task(t3, [t1], max), task(t4, [], const(5))]], same_as_waves(true)).
io(133, waves, [[task(t1, [], const(2)), task(t2, [], const(4)), task(t3, [t1], sum), task(t4, [t3], inc), task(t5, [t4], max), task(t6, [t1, t4], product)]], [[t1, t2], [t3], [t4], [t5, t6]]).
io(134, run_waves, [[task(t1, [], const(5)), task(t2, [t1], sum), task(t3, [t1], inc)]], [t1-5, t2-5, t3-6]).
io(135, critical_path, [[task(t1, [], const(0)), task(t2, [], const(5)), task(t3, [t2], max), task(t4, [t3], max), task(t5, [t1, t3, t4], inc), task(t6, [t2], inc)]], 4).
io(136, run_reversed_valid, [[task(t1, [], const(3)), task(t2, [], const(4)), task(t3, [], const(3)), task(t4, [t1], max), task(t5, [t1, t3, t4], product), task(t6, [t1, t3, t4], product)]], same_as_waves(true)).
io(137, waves, [[task(t1, [], const(2)), task(t2, [], const(1))]], [[t1, t2]]).
io(138, run_waves, [[task(t1, [], const(4)), task(t2, [t1], sum), task(t3, [t2], max), task(t4, [t2, t3], inc), task(t5, [t1, t2, t3, t4], sum)]], [t1-4, t2-4, t3-4, t4-9, t5-21]).
io(139, critical_path, [[task(t1, [], const(0)), task(t2, [t1], max), task(t3, [t1], product), task(t4, [], const(4))]], 2).
io(140, run_reversed_valid, [[task(t1, [], const(0)), task(t2, [], const(4)), task(t3, [t1], inc), task(t4, [], const(4))]], same_as_waves(true)).
io(141, waves, [[task(t1, [], const(5)), task(t2, [], const(3)), task(t3, [t1, t2], inc)]], [[t1, t2], [t3]]).
io(142, run_waves, [[task(t1, [], const(4)), task(t2, [t1], inc), task(t3, [t2], max)]], [t1-4, t2-5, t3-5]).
io(143, critical_path, [[task(t1, [], const(1)), task(t2, [t1], product), task(t3, [], const(4)), task(t4, [t1], sum), task(t5, [t3, t4], sum)]], 3).
io(144, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [], const(0)), task(t3, [t2], inc)]], same_as_waves(true)).
io(145, waves, [[task(t1, [], const(4)), task(t2, [], const(4))]], [[t1, t2]]).
io(146, run_waves, [[task(t1, [], const(0)), task(t2, [], const(1)), task(t3, [t1, t2], inc), task(t4, [t1], inc), task(t5, [t3, t4], sum)]], [t1-0, t2-1, t3-2, t4-1, t5-3]).
io(147, critical_path, [[task(t1, [], const(0)), task(t2, [], const(2)), task(t3, [t2], sum), task(t4, [t1, t2, t3], sum), task(t5, [t1, t2, t3, t4], max), task(t6, [], const(5))]], 4).
io(148, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [], const(5)), task(t3, [t1], max), task(t4, [t3], max)]], same_as_waves(true)).
io(149, waves, [[task(t1, [], const(1)), task(t2, [t1], product)]], [[t1], [t2]]).
io(150, run_waves, [[task(t1, [], const(2)), task(t2, [], const(5)), task(t3, [t1, t2], max), task(t4, [t1, t2], product), task(t5, [], const(3))]], [t1-2, t2-5, t3-5, t4-10, t5-3]).
io(151, critical_path, [[task(t1, [], const(3)), task(t2, [], const(0))]], 1).
io(152, run_reversed_valid, [[task(t1, [], const(2)), task(t2, [t1], inc), task(t3, [], const(3)), task(t4, [t3], inc), task(t5, [t2, t3], product), task(t6, [t1, t2, t4, t5], max)]], same_as_waves(true)).
io(153, waves, [[task(t1, [], const(0)), task(t2, [], const(1)), task(t3, [t1], inc), task(t4, [t1, t2], inc)]], [[t1, t2], [t3, t4]]).
io(154, run_waves, [[task(t1, [], const(1)), task(t2, [], const(3)), task(t3, [t1], inc)]], [t1-1, t2-3, t3-2]).
io(155, critical_path, [[task(t1, [], const(0)), task(t2, [t1], max), task(t3, [t1], product)]], 2).
io(156, run_reversed_valid, [[task(t1, [], const(2)), task(t2, [t1], max), task(t3, [t1], max), task(t4, [], const(1)), task(t5, [t1, t2], product)]], same_as_waves(true)).
io(157, waves, [[task(t1, [], const(2)), task(t2, [t1], product), task(t3, [t1], product), task(t4, [t1, t2, t3], inc), task(t5, [t1, t4], product)]], [[t1], [t2, t3], [t4], [t5]]).
io(158, run_waves, [[task(t1, [], const(1)), task(t2, [t1], sum)]], [t1-1, t2-1]).
io(159, critical_path, [[task(t1, [], const(0)), task(t2, [t1], product), task(t3, [t1, t2], max)]], 3).
io(160, run_reversed_valid, [[task(t1, [], const(2)), task(t2, [], const(4)), task(t3, [t1], product), task(t4, [t1], product), task(t5, [t1, t2], product), task(t6, [t2], sum)]], same_as_waves(true)).
io(161, waves, [[task(t1, [], const(4)), task(t2, [], const(2)), task(t3, [t1], product), task(t4, [t1, t2], max)]], [[t1, t2], [t3, t4]]).
io(162, run_waves, [[task(t1, [], const(2)), task(t2, [], const(2))]], [t1-2, t2-2]).
io(163, critical_path, [[task(t1, [], const(4)), task(t2, [], const(3))]], 1).
io(164, run_reversed_valid, [[task(t1, [], const(1)), task(t2, [t1], inc)]], same_as_waves(true)).
io(165, waves, [[task(t1, [], const(5)), task(t2, [t1], inc), task(t3, [t1, t2], product), task(t4, [t3], sum)]], [[t1], [t2], [t3], [t4]]).
io(166, run_waves, [[task(t1, [], const(3)), task(t2, [t1], sum), task(t3, [t2], max)]], [t1-3, t2-3, t3-3]).
io(167, critical_path, [[task(t1, [], const(2)), task(t2, [t1], inc), task(t3, [t1], sum)]], 2).
io(168, run_reversed_valid, [[task(t1, [], const(3)), task(t2, [], const(1)), task(t3, [t2], inc), task(t4, [t2], product)]], same_as_waves(true)).
io(169, waves, [[task(t1, [], const(3)), task(t2, [t1], sum), task(t3, [t1, t2], product), task(t4, [t1], inc)]], [[t1], [t2, t4], [t3]]).
io(170, run_waves, [[task(t1, [], const(2)), task(t2, [t1], max), task(t3, [], const(5)), task(t4, [t1, t2, t3], product)]], [t1-2, t2-2, t3-5, t4-20]).
io(171, critical_path, [[task(t1, [], const(3)), task(t2, [], const(1)), task(t3, [], const(3))]], 1).
io(172, run_reversed_valid, [[task(t1, [], const(1)), task(t2, [t1], sum), task(t3, [], const(4))]], same_as_waves(true)).
io(173, waves, [[task(t1, [], const(5)), task(t2, [], const(1)), task(t3, [], const(3)), task(t4, [t2], inc), task(t5, [t2], sum), task(t6, [t1, t2, t4], sum)]], [[t1, t2, t3], [t4, t5], [t6]]).
io(174, run_waves, [[task(t1, [], const(3)), task(t2, [], const(4)), task(t3, [t2], sum)]], [t1-3, t2-4, t3-4]).
io(175, critical_path, [[task(t1, [], const(3)), task(t2, [t1], max), task(t3, [t1, t2], product)]], 3).
io(176, run_reversed_valid, [[task(t1, [], const(2)), task(t2, [t1], sum), task(t3, [t1, t2], product), task(t4, [t1, t2, t3], sum)]], same_as_waves(true)).
io(177, waves, [[task(t1, [], const(3)), task(t2, [], const(1))]], [[t1, t2]]).
io(178, run_waves, [[task(t1, [], const(0)), task(t2, [], const(4)), task(t3, [t1], max), task(t4, [t1, t2], sum), task(t5, [t4], product)]], [t1-0, t2-4, t3-0, t4-4, t5-4]).
io(179, critical_path, [[task(t1, [], const(4)), task(t2, [], const(5))]], 1).
io(180, run_reversed_valid, [[task(t1, [], const(3)), task(t2, [t1], max)]], same_as_waves(true)).
io(181, waves, [[task(t1, [], const(3)), task(t2, [t1], sum)]], [[t1], [t2]]).
io(182, run_waves, [[task(t1, [], const(3)), task(t2, [t1], max), task(t3, [], const(0))]], [t1-3, t2-3, t3-0]).
io(183, critical_path, [[task(t1, [], const(2)), task(t2, [], const(1)), task(t3, [t2], product), task(t4, [t2], max), task(t5, [t1, t2, t3], max), task(t6, [t2, t5], product)]], 4).
io(184, run_reversed_valid, [[task(t1, [], const(1)), task(t2, [t1], sum), task(t3, [], const(1)), task(t4, [t2, t3], sum)]], same_as_waves(true)).
io(185, waves, [[task(t1, [], const(3)), task(t2, [], const(4)), task(t3, [t1], product)]], [[t1, t2], [t3]]).
io(186, run_waves, [[task(t1, [], const(0)), task(t2, [t1], max), task(t3, [t1, t2], inc), task(t4, [t2, t3], sum), task(t5, [t2, t3], sum)]], [t1-0, t2-0, t3-1, t4-1, t5-1]).
io(187, critical_path, [[task(t1, [], const(4)), task(t2, [], const(2)), task(t3, [], const(5)), task(t4, [t1, t2, t3], inc), task(t5, [], const(0)), task(t6, [t3, t4, t5], product)]], 3).
io(188, run_reversed_valid, [[task(t1, [], const(0)), task(t2, [], const(4)), task(t3, [t1, t2], max), task(t4, [t2], max), task(t5, [t2, t4], sum)]], same_as_waves(true)).
io(189, waves, [[task(t1, [], const(0)), task(t2, [t1], max), task(t3, [t1], product), task(t4, [t1, t3], sum)]], [[t1], [t2, t3], [t4]]).
io(190, run_waves, [[task(t1, [], const(5)), task(t2, [t1], inc)]], [t1-5, t2-6]).
io(191, critical_path, [[task(t1, [], const(0)), task(t2, [t1], inc)]], 2).
io(192, run_reversed_valid, [[task(t1, [], const(2)), task(t2, [t1], sum), task(t3, [t1, t2], max), task(t4, [t1, t2], max), task(t5, [], const(1))]], same_as_waves(true)).
io(193, waves, [[task(t1, [], const(0)), task(t2, [], const(4)), task(t3, [t2], sum), task(t4, [t3], inc), task(t5, [t2, t4], max), task(t6, [t2, t3, t4, t5], product)]], [[t1, t2], [t3], [t4], [t5], [t6]]).
io(194, run_waves, [[task(t1, [], const(1)), task(t2, [t1], product), task(t3, [t1, t2], sum)]], [t1-1, t2-1, t3-2]).
io(195, critical_path, [[task(t1, [], const(0)), task(t2, [], const(4)), task(t3, [t1, t2], sum), task(t4, [t1], max), task(t5, [t1, t4], max)]], 3).
io(196, run_reversed_valid, [[task(t1, [], const(5)), task(t2, [t1], sum)]], same_as_waves(true)).
io(197, waves, [[task(t1, [], const(5)), task(t2, [], const(2)), task(t3, [t2], sum)]], [[t1, t2], [t3]]).
io(198, run_waves, [[task(t1, [], const(1)), task(t2, [t1], max), task(t3, [t2], inc), task(t4, [t1, t2], inc), task(t5, [t1, t2], max), task(t6, [t2, t3, t4, t5], product)]], [t1-1, t2-1, t3-2, t4-3, t5-1, t6-6]).
io(199, critical_path, [[task(t1, [], const(1)), task(t2, [], const(2)), task(t3, [t2], sum), task(t4, [t1, t2], inc)]], 2).
io(200, run_reversed_valid, [[task(t1, [], const(0)), task(t2, [t1], inc), task(t3, [t2], product), task(t4, [t1, t2], inc), task(t5, [t2, t3, t4], inc)]], same_as_waves(true)).
