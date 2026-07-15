# Tools

[Panini House](https://panini.house)'s attempt to create a better Mac.

## Motivations

It's no secret that at Panini House we love the Mac.

We loved it when we ditched Windows more than a decade ago, we loved it the first time we tried to develop a web page or to make a logo, and we still love it to this day.
The Mac played an integral role in our personal growth and professional journey.
After all, it's why many of us discovered the joy of programming or the craftmanship behind graphic design.
It wouldn't be absurd to say that without the Mac our lives might look very different today.
That’s just how deeply we love the ecosystem, and we’re grateful for its existence.

Unfortunately, another secret in plain sight is how little love and innovation the Mac has received in recent years.

We can’t deny that many questionable choices have been made recently.
Also, we can't deny that the Mac is no longer the only decent option for people like us who love computers (has it ever been?).
If it weren't for our native apps, which strictly require a Mac to be compiled, we would be perfectly able to run our entire major consulting business from another OS like GNU/Linux or FreeBSD.
Now, more than ever, it is a deliberate choice to keep using the Mac and, in our view, it's the community's duty to steer it in a desirable direction.

That's why we decided to give back to the Mac ecosystem by making new apps, tools, and utilities focused on re-thinking the very basics of human-machine interaction.
We're asking ourselves foundational questions like: *"What does 'desktop' even mean?"*, *"How should we navigate the system?"*, *"How far we can go with just a menu?"*, *"How can me make it our own?"*.

It's not obvious that we'll find answers to all of these questions, for sure is not an easy task.
Only time will tell.
What we can guarantee is that anything we come up with will be very nerdy, probably weird, but for sure worth to be developed.
We will create our version of XYZ only if we really have some good ideas to improve the product class, not just for the sake of it.
If this resonates with you, stay tuned.

## Guiding principles

The future developments of these projects will follow some guiding principles.
Nothing crazy, but a good set of metrics to judge our own work against.
If they sound very similar to the Unix philosphy to you, well that's because they kind of are ;-)

### Small and laser-focused

Each tool solves one problem and solves it exceptionally well.
Basically, it should be the best acceptable solution to a problem in its simplest way possible.

That doesn't mean we should enforce a strict code line limit or some other bullshit like: *"the entire program must live in a single file"*.
The code should be legible, elegant, and efficient as always, but in general terms you should be able to explain the entire codebase to a new developer in a couple of hours.

### Interoperable and orchestrated

Each tool works seamlessly with others, leveraging Unix features like stdin, stdout, and pipes.
We want our tools to be laser-focused and simple to maintain.
In this logic, the only way we can achieve big things is if we make them talk to each other and to the overall ecosystem.

For example, this means that we should not implement the same features over and over again in every tool.
It's way better to develop one small utility that does that and let the others invoke it.
Does it mean we might sometimes force the user to install another tool to enable a feature or action?
Yes, and as we see it is not an issue.

### Extensible and customisable

Each tool invites users to extend its functionality or tailor its design to their needs.
Whenever we encounter a problem that could be solved with an extension or plugin, we should implement one.
Providing users with a way to add the features they want is way better than having to maintain an infinitely growing library of small integrations or use-cases.
Especially in the era of AI we can safely assume the users will be able to write their own integrations, maybe the solutions won’t be beautiful or generalizable but they'll scratch the itch.

Following the same logic, it doesn’t make sense for someone to consider switching tools because it doesn't look or behave like they want.
Every tool should be customizable in both features and design.

## Install

```sh
brew tap paninihouse/tools
```

> [!IMPORTANT]  
> Since Homebrew v6.0.0 you're required to [trust a repository](https://docs.brew.sh/Tap-Trust) before you can use it.
> You can trust the individual formulas you plan to use, but we recommend trusting the entire repository for convenience.
>
> ```sh
> brew trust paninihouse/tools
> ```

## Available tools

### `phservices`

Friendly launchctl wrapper for your personal services.

phservices helps you keep an eye on and manage all your personal background services.
The cli wraps the standard macOS launchctl utility, exposing just enough functionalities to be dangerous.

Enjoy a unified API to start, stop, and restart the services and use the overview commands to check the current status in a beautifully formatted table.
By design phservices will let you see and operate only on user defined services (the ones that you really care about).

If you ever had to deal with launchctl, you'd probably be really pissed by always having to specify the full .plist file path.
Forget it!
phservices is built around fuzzy search.
If just one result is found the command is executed right away, otherwise it will ask you to choose the correct one.

Source: [paninihouse/services](https://github.com/paninihouse/services).

```sh
brew install paninihouse/tools/phservices
```
