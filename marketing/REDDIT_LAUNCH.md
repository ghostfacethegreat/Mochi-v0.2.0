# Mochi — Reddit launch notes

## Read before posting

Reddit prohibits repeated, unsolicited, mass promotional activity. Reddit's guidance notes that many communities use a 10% self-promotion guideline (roughly 9 helpful contributions for every promotional one), while each subreddit can set stricter rules. Check the live rules, pinned posts, flair requirements, karma/account-age requirements, and link restrictions immediately before submitting.

- Reddit spam policy: https://support.reddithelp.com/hc/en-us/articles/360043504051-Spam
- Reddit self-promotion / Reddiquette: https://support.reddithelp.com/hc/en-us/articles/205926439-Reddiquette
- r/SideProject rules: https://www.reddit.com/r/SideProject/about/rules
- r/LocalLLaMA rules: https://www.reddit.com/r/LocalLLaMA/about/rules

Do not post the same copy to multiple subreddits. Do not use alt accounts, vote manipulation, automated commenting, unsolicited DMs, or manufactured testimonials.

## First launch target: r/SideProject

Only post after the GitHub repository contains the source tree, the install path has been tested on a clean Mac, and at least one short demo/GIF is available. Pick the appropriate flair and check the rules on posting day.

### Suggested title

I'm building Mochi, a local-first AI companion with a tiny trainable model, a coding CLI, and procedural Blender tools

### Draft

Hey everyone — I'm building Mochi, an open-source local-first AI assistant for people who like working in the terminal but also want creative tools in one place.

The idea started as a small personal project: a cute, minimal CLI that could help with coding tasks and gradually grow into a customizable companion. The current prototype includes:

- A small 14.5M-parameter Transformer trained from scratch as an educational experiment (not a GPT-level model).
- A coding toolkit that detects common languages/project types, inspects repositories, scaffolds starter projects, and can run recognized tests after approval.
- Procedural Blender scenes generated from presets or validated JSON recipes, with editable `.blend` output.
- Local configuration and memory, explicit training examples, and a visible plan/check workflow.
- Early VTube Studio and FlyBrain bridge work; these integrations still need live end-to-end testing.

I'm testing this on an M1 Pro / 16 GB Mac and would especially value feedback on the installation experience, the limits of a useful small local model, and which creative workflow would be most useful next.

I'm the person building Mochi, so this is my own project. It's experimental; I'm not claiming the integrations or model are production-ready. Source and progress: https://github.com/ghostfacethegreat/Mochi-v0.2.0

What would you try first, and what should I simplify?

## r/LocalLLaMA: wait for benchmarks

Wait until you have reproducible M1 Pro measurements. A useful technical post should include the exact model config, tokenizer, dataset and license, training command, train/validation loss, wall-clock time, peak memory, tokens/sec, and limitations. Disclose that you are the maintainer. Check current rules and follow the community's self-promotion limits. A small model with no reliable benchmark is not yet a compelling model-release post.

## Two-week traction plan

1. Week 1: finish the public source tree and clean install; post one short build log with a terminal screenshot or Blender render; answer questions without linking Mochi unless directly relevant.
2. Week 2: publish one focused r/SideProject launch/feedback post if rules allow; share a technical benchmark or troubleshooting note only after measuring it on actual hardware.
3. Reply to every genuine question with details, including bugs and limitations. Convert repeated requests into GitHub issues.
4. Track repository visitors, stars, forks, clone count where available, issue quality, and successful installations. Do not optimize only for upvotes.

## Readiness checklist

- [ ] Repository source tree is complete and cloneable.
- [ ] Fresh macOS install tested from a clean virtual environment.
- [ ] README quickstart matches real commands.
- [ ] One short terminal demo and one Blender output screenshot recorded.
- [ ] Version and known limitations are accurate.
- [ ] License and third-party asset/model notices checked.
- [ ] The target subreddit's current rules and flair checked.