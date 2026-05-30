# SkillForge（技能锻造工坊）

> **站在巨人的肩膀上，做得更好。** — 一个优化过的 AI Agent 技能创建框架，基于领域专家验证过的方法论。

帮助你在生成任何新技能之前，从公认的大师那里发现并整合框架、原则和最佳实践。适用于 Claude Code、Codex 及其他 AI Agent 平台。

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Skills: 5](https://img.shields.io/badge/skills-5-blue)
![Domains: 15+](https://img.shields.io/badge/domains-15+-green)

---

## 为什么选择 SkillForge？

**创建技能最难的不是格式——而是知道做这件事的最佳方法。**

SkillForge 是 [skill-from-masters](https://github.com/GBSOSS/skill-from-masters) 项目的优化演进版本。原项目开创了"向专家学习"的方法论，SkillForge 在此基础上进行了大幅增强：

| 改进项 | 说明 |
|--------|------|
| **英文优先 + 国际化** | 主要内容使用英文，同时支持结构化多语言 |
| **扩展技能分类法** | 从 11 种扩展到 15 种技能类型，覆盖技术和非技术领域 |
| **质量评分标准** | 标准化的 5 维度评分体系，用于评估每个生成的技能 |
| **反馈闭环** | 内置 skill-evaluator 和 skill-improver，支持迭代改进 |
| **结构化模板** | 每种技能类型都有对应的输出模板，保证质量一致性 |
| **反模式目录** | 整理好的常见失败模式，帮助你避免踩坑 |
| **按需加载** | 模块化参考文件设计，只加载需要的内容 |
| **工具链** | 验证和脚手架脚本，加速技能开发 |

## 工作原理

```
1. 你："帮我创建一个用户访谈的技能"

2. SkillForge：
   ├── 收窄任务范围（具体是什么？什么场景下使用？）
   ├── 搜索黄金案例（做得最好的人是怎么做的）
   ├── 搜索失败案例（常见的错误是什么）
   ├── 寻找前后对比（有效 vs 无效）
   ├── 跨多个来源交叉验证
   └── （可选）用理论解释为什么有效

3. 呈现发现：
   - Rob Fitzpatrick（《妈妈测试》）— 真实对话案例
   - Steve Portigal（《访谈用户》）— 具体技巧
   - NN Group — 经过研究的"该做"与"不该做"
   - 常见失败：诱导性问题、询问假设性场景

4. 你选择要采纳哪些模式

5. 使用结构化模板 + 质量评分标准生成技能

6. （可选）skill-evaluator 对输出打分
7. （可选）skill-improver 根据评估结果优化
```

## 核心特性

| 特性 | 描述 |
|------|------|
| **实践优先搜索** | 找到真正的实践高手（而不只是写书的人）——那些真正把事情做得最好的人 |
| **黄金+失败案例** | 既学习什么有效，也学习什么无效——对比是最好的老师 |
| **交叉验证** | 对比多位专家的观点，找到共识模式，标记分歧点 |
| **质量评分** | 5 维度评分：清晰度、具体性、可操作性、覆盖面、可测试性 |
| **结构化输出** | 每种类型都有专属模板，确保技能包含正确的章节 |
| **迭代优化** | skill-evaluator → skill-improver 反馈闭环，持续提升 |

## 方法论文档库

覆盖 15+ 领域，包含 80+ 专家框架：

| 领域 | 代表专家 |
|------|----------|
| 写作与沟通 | Barbara Minto、William Zinsser、Amazon 6-pager |
| 产品与设计 | Marty Cagan、Teresa Torres、Dieter Rams |
| 销售与营销 | Neil Rackham (SPIN)、April Dunford、Seth Godin |
| 招聘与人才 | Laszlo Bock、Geoff Smart、Kim Scott |
| 用户研究 | Rob Fitzpatrick、Steve Portigal、JTBD |
| 工程 | Martin Fowler、Kent Beck、John Ousterhout |
| 领导力 | Andy Grove、Ray Dalio、Netflix Culture |
| 谈判 | Chris Voss、Fisher & Ury |
| 创业 | Eric Ries、Paul Graham、YC |
| 决策 | Jeff Bezos、Charlie Munger、Annie Duke |
| 个人效能 | Cal Newport、James Clear、David Allen |
| 金融与投资 | Warren Buffett、Howard Marks |

此外还有**口述传统**部分，收录主要通过演讲和访谈分享经验的专家（Jensen Huang、Patrick Collison、Naval Ravikant 等）。

## 安装

### 方式一：直接克隆（推荐）

```bash
# 进入你的技能目录
cd ~/.claude/skills  # Claude Code
# 或你所用平台的技能路径

# 克隆技能仓库
git clone https://github.com/ihgoa501-stack/masters-skill.git
```

### 方式二：手动安装

1. 下载 `skillforge` 文件夹
2. 放到你的技能目录中

### 依赖

- **skill-creator** — 用于最终技能生成（同级技能）
- 可选：**skill-evaluator** — 质量评分（已包含）
- 可选：**skill-improver** — 迭代优化（已包含）

## 使用方法

### 创建新技能

当你请求创建新技能时，SkillForge 会自动激活。它在 **skill-creator 之前运行**，确保你的技能建立在经过验证的方法论之上。

**示例对话：**

```
你："帮我创建一个写冷启动邮件的技能"

SkillForge：
  > 让我先收窄一下范围。是 B2B 销售邮件、
  > 招聘邮件，还是合作邀约？

你："B2B 销售，目标是 A 轮创业公司的 CTO"

SkillForge：
  > [搜索顶级 SDR 的真实邮件案例]
  > [搜索冷邮件的常见错误]
  > [寻找提升回复率的改写前后对比]
  >
  > 我从顶级从业者那里找到了几个模式：
  >
  > 黄金案例：
  > - 3 位回复率超过 30% 的从业者
  > - 他们的共同模式：先做调研、问题先行、最多 3 句话
  >
  > 失败模式：
  > - "希望这封邮件能找到你"（瞬间失去信任）
  > - 没有上下文就开始堆砌产品功能
  > - 索取时间却不说明价值
  >
  > 关键对比：
  > ✅ "看到你关于 Kafka 迁移的文章——我们帮 Acme
  >    用类似方案将延迟降低了 60%。值得聊聊？"
  > ❌ "我想向您介绍我们出色的数据平台..."
  >
  > 哪些模式你觉得合适？需要深入某个方向吗？

你："我喜欢调研优先的方式，用这个。"

SkillForge：[使用结构化模板生成技能，包含该做/不该做的对比，
           附上质量评分]
```

### 查找已有技能

```
你："帮我找一个自动化测试的技能"

SkillForge (search-skill)：
  > 已搜索 5 个可信来源
  > 找到：webapp-testing（官方）、playwright（已验证）、
  >        code-review（26k stars）
```

### 从 GitHub 项目学习

```
你："我想把图片转成 ASCII 艺术"

SkillForge (skill-from-github)：
  > 找到：ascii-image-converter（3.1k stars）、RASCII（224 stars）
  > 你想让我深入学习哪个？
```

## 包含的技能

| 技能 | 文件 | 用途 |
|------|------|------|
| **skillforge** | `skillforge/SKILL.md` | 核心：基于专家方法论创建技能 |
| **search-skill** | `skills/search-skill/SKILL.md` | 从可信来源查找已有技能 |
| **skill-from-github** | `skills/skill-from-github/SKILL.md` | 从 GitHub 项目学习并提取知识 |
| **skill-evaluator** | `skills/skill-evaluator/SKILL.md` | 用 5 维度评分标准评估技能质量（新） |
| **skill-improver** | `skills/skill-improver/SKILL.md` | 基于反馈迭代改进技能（新） |

## 文件结构

```
skillforge/
├── skillforge/
│   ├── SKILL.md                         # 核心技能，包含优化的六阶段工作流
│   └── references/
│       ├── methodology-registry.md      # 精选专家框架库（80+ 条目）
│       ├── skill-taxonomy.md            # 15 种技能类型分类
│       ├── quality-rubric.md            # 5 维度评分标准
│       ├── output-templates.md          # 按类型划分的输出模板
│       └── anti-patterns.md             # 常见失败模式目录
├── skills/
│   ├── search-skill/SKILL.md            # 增强版技能发现
│   ├── skill-from-github/SKILL.md       # 增强版 GitHub 知识提取
│   ├── skill-evaluator/SKILL.md         # 质量评估（新）
│   └── skill-improver/SKILL.md          # 迭代优化（新）
├── tools/
│   ├── validate.sh                      # 技能验证脚本
│   └── scaffold.sh                      # 新技能脚手架脚本
├── docs/
│   ├── quickstart.md
│   └── examples/
│       ├── example-product-skill.md
│       └── example-writing-skill.md
├── README.md
├── README_CN.md
├── LICENSE
└── .gitignore
```

## 质量标准

通过 SkillForge 生成的每个技能都会在以下 5 个维度上进行评估：

1. **清晰度** — 新用户能否一读就懂该做什么？
2. **具体性** — 是否有具体示例，而不只是抽象原则？
3. **可操作性** — 每条指令是否告诉你具体采取什么行动？
4. **覆盖面** — 是否同时覆盖了成功模式和失败模式？
5. **可测试性** — 能否用真实场景验证技能是否有效？

## 设计哲学

> **技能是拿来干的，不是拿来读的。**

最好的技能读起来像是出自一个做了这件事无数次的人之手——因为它们确实是向这样做的人学来的。

- **实践专家 > 理论专家** — 向做得最好的人学习，而不只是向写书的人学习
- **先案例，后理论** — 理论用来解释实践发现的现象
- **黄金案例 + 失败案例** — 知道不该做什么和知道该做什么同样有价值
- **对比就是清晰** — "这样做，不要那样做"比"这样做"学得更快

## 与原项目的对比

| 方面 | skill-from-masters（原版） | SkillForge（本仓库） |
|------|--------------------------|---------------------|
| **语言** | 中文 SKILL.md | 英文为主，提供中文 README |
| **技能类型** | 11 种（仅非技术类） | 15 种（新增自动化、集成、代码生成、分析） |
| **包含技能数** | 3 个 | 5 个（新增评估器和改进器） |
| **质量体系** | 简单检查清单 | 5 维度评分标准 + 20 个标志位 |
| **输出方式** | 自由生成 | 15 种类型专属结构化模板 |
| **反模式** | 无 | 15 个分类反模式目录 |
| **方法论库** | Markdown 表格 | 交叉引用技能类型 +"最适合"列 |
| **工具链** | 无 | validate.sh + scaffold.sh |
| **文档** | 仅 README | README + 快速入门 + 2 个完整示例 |
| **反馈闭环** | 无 | 评估器 → 改进器 → 评估器循环 |

## 贡献

欢迎贡献！尤其欢迎：

- 向方法论文档库添加新的领域和专家
- 用经过验证的源链接改进框架描述
- 分享使用此方法创建的技能示例
- 添加使用中发现的新反模式

## 致谢

SkillForge 基于 [GBSOSS/skill-from-masters](https://github.com/GBSOSS/skill-from-masters) 优化演进而来。原项目开创了"用专家方法论支撑 AI 技能"的方法。SkillForge 在此基础上增加了扩展分类法、质量评分标准、反馈闭环、结构化模板和英文优先的国际化支持。

## 许可证

MIT License — 自由使用、修改和分发。

---

**设计哲学：** 高质量不是写出来的，而是从世界上最优秀的实践者那里**筛选**出来的。
