// |reftest| skip-if(!this.hasOwnProperty('BigInt')) -- BigInt is not enabled unconditionally
// Copyright (C) 2019 Igalia, S.L. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.

/*---
esid: sec-bigint.prototype.tolocalestring
description: Checks basic behavior for BigInt.prototype.toLocaleString.
locale: [en-US]
features: [BigInt]
---*/

const tests = [
  [0n, undefined, "0"],
  [-0n, undefined, "0"],
  [88776655n, { "maximumSignificantDigits": 4 }, "88,780,000"],
  [88776655n, { "maximumSignificantDigits": 4, "style": "percent" }, "8,878,000,000%"],
  [88776655n, { "minimumFractionDigits": 3 }, "88,776,655.000"],
  [90071992547409910n, undefined, "90,071,992,547,409,910"],
];

for (const [bigint, options, expected] of tests) {
  const result = bigint.toLocaleString("en-US", options);
  assert.sameValue(result, expected);
}

reportCompare(0, 0);
