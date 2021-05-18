---
layout: post
title: "Codespaces: GitHub's Play for a Remote Development Future"
image: /assets/2021-05-16-codespaces.png
categories: Visual-Studio-Code, Text-Editor, Development
---

![Codespaces Logo](/assets/2021-05-16-codespaces.png)

When I first saw [Codespaces](https://github.com/features/codespaces), I immediately wanted it. With ubiquitous high-speed internet, why not offload more work to the cloud? What could [our devices look like](https://www.theverge.com/2015/4/9/8372335/12-inch-macbook-review) if most of their power came from the server? What would their battery life be like?

Seamlessly leveraging remote resources has always felt like an idea that's just around the corner, but never arrives. Just having a big beefy machine on site usually ends up being the most practical solution (outside of some specialized use cases)[^mac_pro_is_still_relevant].

Codespaces is perhaps the biggest play ever to take remote development more mainstream. Development has always been a prime candidate for remote computing, because with [time-sharing](https://en.wikipedia.org/wiki/Time-sharing) [machines](https://en.wikipedia.org/wiki/PDP-11), it's how the roots of programming itself began[^codespaces_is_in_beta].

## Visual Studio Online to GitHub Codespaces

GitHub Codespaces began as a different product, called Visual Studio Online. Visual Studio Online was [announced](https://devblogs.microsoft.com/visualstudio/announcing-visual-studio-online-public-preview/)  on the Visual Studio Blog in November 2019. Then, in April 2020, it was renamed to Visual Studio Codespaces, [Nik Molnar](https://twitter.com/nikmd23) [described the motivation behind the name change](https://devblogs.microsoft.com/visualstudio/introducing-visual-studio-codespaces/) on the same blog:

> We learned that developers are finding Visual Studio Online to be much more than just an “editor in the browser”. They are saying that “the capabilities of this cloud-hosted dev environment make it the space where I want to write all my code“.
>
> To better align with that sentiment, and the true value of the service, we’re renaming Visual Studio Online to Visual Studio Codespaces.

A few days later, a corresponding announcement appeared on the GitHub blog that [Codespaces was coming to GitHub](https://github.blog/2020-05-06-new-from-satellite-2020-github-codespaces-github-discussions-securing-code-in-private-repositories-and-more/). Then, almost a year later in September 2020, it was announced on the Visual Studio Blog that [Visual Studio Codespaces would be consolidated into GitHub Codespaces](https://devblogs.microsoft.com/visualstudio/visual-studio-codespaces-is-consolidating-into-github-codespaces/), and that Visual Studio Codespaces would be retired in February 2021.

Visual Studio Codespaces was similar to GitHub Codespaces, but it did have some key differences. Visual Studio Codespaces wore more of its implementation details on its sleeve, in particular, as being built on top of [Microsoft Azure](https://azure.microsoft.com/en-us/). When you setup a Visual Studio Codespaces, it was linked to an Azure subscription and location, and you chose a "Default Instance Type" for new codespaces[^instance_types_coming].

<img src="/assets/2021-05-16-create-codespace.png" alt="Create Environment" width="336">

The decision to remove these details from GitHub Codespaces, and provide quick access to launch a codespace from a repository, was highlighted in the announcement letter about shutting down Visual Studio Codespaces in favor of GitHub Codespaces:

> During the preview we’ve learned that transitioning from a repository to a codespace is the most critical piece of your workflow and the vast majority of you preferred a richly integrated, native, one-click experience.

This is a great example of iterative product design. From a practical perspective, Visual Studio Codespaces is essentially the same product as GitHub Codespaces (and GitHub Codespaces is presumably also running on Azure), but hiding the virtual machine implementation details makes GitHub Codespaces feel different, and a bit more revolutionary[^self_hosted_is_missing]. 

## Tour

Once you're in the Codespaces beta, a "Codespaces" item appears in the navigation menu when you click your user icon in the upper right[^previously_in_the_main_navigation]. Click it, and you're brought to a screen where you can manage the Codespaces you've already created, including removing them by clicking "Delete" under the three disclosure dots.

<img src="/assets/2021-05-16-codespaces-in-menu.png" alt="Codespaces in Navigation" width="332">

Every repository also has an "Open with Codespaces" option, which can either create a new Codespace or open an existing one for that repository.

<img src="/assets/2021-05-16-open-with-codespaces.png" alt="Open With Codespaces" width="441">

After opening a codespace, you're brought to a browser window running Visual Studio Code. It works similarly enough to the desktop version that it's practically indistinguishable[^keyboard_shortcuts_on_macos].

![Codespaces Running](/assets/2021-05-16-codespaces-running.png)

Alternatively, you can connect to the codespace directly from the desktop version of VS Code by using the [Visual Studio Codespaces extension](https://marketplace.visualstudio.com/items?itemName=ms-vsonline.vsonline). The extension adds a "Remote Explorer" icon to the [Activity Bar](https://code.visualstudio.com/docs/getstarted/userinterface) where you can connect to, and manage, your codespaces.

![Codespaces Running in VS Code](/assets/2021-05-16-codespaces-running-vs-code.png)

The [About Codespaces](https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/about-codespaces) section of the documentation explains a couple of details about the relationship between codespaces are repositories:

> Each codespace is associated with a specific branch of a repository. You can create more than one codespace per repository or even per branch. However, each user account has a two-codespace limit during limited public beta.

## Implementation Details

[Codespaces](https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/configuring-codespaces-for-your-project) [uses](https://github.com/microsoft/vscode-dev-containers) [Docker containers](https://www.docker.com/resources/what-container) to setup development environments. GitHub and Microsoft calls a running codespace a "development container" presumably after [Docker containers](https://www.docker.com/resources/what-container), emphasizing their close relationship.

Regarding what's running locally, and what's running in the development container, the [Remote Development FAQ](https://code.visualstudio.com/docs/remote/faq) describes how the user-interface runs locally, i.e., in the browser or VS Code app, while a separate process running on the server ("VS Code Server") handles the operations that need to happen on the server, such as file system access:

> The VS Code Server is quickly installed by VS Code when you connect to a remote endpoint and can host extensions that interact directly with the remote workspace, machine, and file system.

The FAQ also includes this handy diagram illustrating what's running on the server and what's running locally:

![Architecture](/assets/2021-05-16-architecture.png)

Whether extensions runs locally or on the development container depends on whether they ["contribute to the VS Code user interface"](https://code.visualstudio.com/api/advanced-topics/remote-extensions). If they do, they're called "UI Extensions" and run locally, if they don't, they're called "Workspace Extensions" and run on the server.

Whether extensions are UI Extensions or not, they're all installed on the development container at the path `~/.vscode-remote/extensions/`:

    % ls ~/.vscode-remote/extensions/
    castwide.solargraph-0.21.1
    davidanson.vscode-markdownlint-0.37.0
    dbaeumer.vscode-eslint-2.1.8
    dbankier.vscode-quick-select-0.2.9
    eamodio.gitlens-10.2.2
    editorconfig.editorconfig-0.15.1
    ...

## The Rise of Virtualization

The story of server-side infrastructure over the last couple of decades is the story of the rise of [virtualization](https://en.wikipedia.org/wiki/Virtual_machine), and, its sibling, [containerization](https://en.wikipedia.org/wiki/OS-level_virtualization). Both are ways of abstracting the hardware away from the software running on it, which has some powerful benefits. It makes it easier add or remove hardware at will, for example, which simplifies scaling. It also facilitates automating configuration, which eases deployment. Both of these qualities of virtualization are leveraged by Codespaces.

[AWS](https://aws.amazon.com/), [Azure](https://azure.microsoft.com/en-us/), [Docker](https://www.docker.com/), [Heroku](https://www.heroku.com/), and [Kubernetes](https://kubernetes.io/) are all examples of services or technologies that leverage virtualization or containerization. It's also the backbone of most [CI/CD](https://en.wikipedia.org/wiki/CI/CD) and [serverless](https://en.wikipedia.org/wiki/Serverless_computing) systems. While virtualization has revolutionized the server-side, it hasn't had much impact on development environments outside of specialized use cases.

There are two, equally valid, ways of seeing the origins of Codespaces: one, is as a natural extension of an editor that [began as a browse-based version of Visual Studio](https://en.wikipedia.org/wiki/Microsoft_Visual_Studio#Visual_Studio_Online) (formerly called "Visual Studio Online" now "Azure DevOps Services"), the other is as another step in the march of virtualization revolutionizing every aspect of development. These could even be considered the same story: Azure DevOps Services is of course also built on virtualization.

## The Promise of Remote Development

Just being able to quickly spin up a remote development machine from `git` repo to make an open source contribution, or to get a quick development environment to spelunk into a dependency's implementation details, is already enough benefit to make Codespaces popular. But the *ceiling* of Codespaces' success hinges on how useful it is for day-to-day development.

[On the VS Code blog](https://code.visualstudio.com/blogs/2019/05/02/remote-development), the vision is expressed with admirable restraint, focusing on the benefits for large code bases and data models requiring "massive storage and compute services":

> Because the code bases are so large, we see engineers at shops like Facebook (and Microsoft!) use editors like vim to work remotely against secure and powerful "developer VMs", using alternative cloud-based search and navigation services that scale beyond what even the best laptop can handle.
>
> Data Scientists building and training data models often need massive storage and compute services to analyze large datasets that can't be stored or processed even on a robust desktop.

In [Facebook's later announcement](https://developers.facebook.com/blog/post/2019/11/19/facebook-microsoft-partnering-remote-development/) of their partnership with Microsoft on remote development, the advantages are expressed in broader terms, suggesting that "any developer can gain" from remote development:

> As Microsoft’s Visual Studio Code team stated when they first released the remote extensions, remote development is an emerging trend. While our use cases may be more advanced than most development teams given our scale, any developer can gain the benefits of remote development:
>
> - Work with larger, faster, or more specialized hardware than what’s available on your local machine
> - Create tailored, dedicated environments for each project’s specific dependencies, without worrying about errors due to mixed or conflicting configurations
> - Support the flexibility of being able to quickly switch between multiple running development environments without impacting local resources or tool performance

Those are compelling advantages that most developers could benefit from. So what are the chances of Codespaces supplanting local development, not just for specialized use cases, but developer's day-to-day work on their main project?

Remote development isn't new, it's been around since the dawn of programming, and VS Code already has [best-in-class support for it](https://code.visualstudio.com/docs/remote/remote-overview). But remote development in VS Code, while frequently praised, hasn't moved the needle much on its own for day-to-day development. Which means we can look at the advantages of remote development that VS Code already had before Codespaces, and note that they probably won't be enough on their own to make remove development more popular. Here are the often cited advantages of remote development before Codespaces:

1. Developing in the same server environment that production code runs in.
2. Using more powerful hardware.
3. Accessing the same development environment from any machine.

In addition to those advantages, Codespaces has a new trick up it's sleeve: [Automatically setting up development environments](https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/configuring-codespaces-for-your-project) when a new codespace is created, by installing dependencies via Docker[^codespaces_dotfiles]. In other words, Codespaces brings the same automated configuration advantages to the development side that virtualization and containerization have already brought to the deployment side. Configuring development environments is [surprisingly complex](https://xkcd.com/1987/), and subtle differences between manually-configured development machines [creates its own problems](https://blog.codinghorror.com/the-works-on-my-machine-certification-program/).

It remains to be seen whether reproducible development environments is enough of a draw to move more developers over to remote development, but it's certainly a compelling solution to a real problem.

Finally, there's another important trait about Codespaces: It works with locked-down devices, like iPads, which normally can't download and execute source code due to [App Store Review Guideline 2.5.2](https://developer.apple.com/app-store/review/guidelines/#2.5.2). It also doesn't require source code to be checked out locally, which many companies already consider a big security risk. These advantages will likely make some developers uncomfortable, those that see current computing trends as the gradual erosion of user freedoms, but the purpose of this piece is to predict the impact Codespaces will have on the development process, and that it aligns well with both the direction some devices are going, and many company's security goals, are both important traits to consider.

## Remote Development in Practice

Codespaces creates a fairly convincing illusion of working locally[^tramp_mode_is_well_regarded]. This is especially true when using the VS Code app with the [Codespaces extension](https://marketplace.visualstudio.com/items?itemName=ms-vsonline.vsonline). Performing tasks like editing text, project-wide find-and-replace, or file management in the [Explorer](https://code.visualstudio.com/docs/getstarted/userinterface#_explorer) don't exhibit any major differences from editing files locally.

One of VS Code's best tricks is automatically forwarding ports for URLs printed in the console when connected to a remote machine. If, for example, a server process prints `127.0.0.1:3000` (because it's running on port 3000) then port 3000 is automatically be forwarded to your local machine. You can then open that URL in a local browser window (or just `⌘`-click the URL in the console), just like you would be able to if the server process were running locally[^launch_json_port_forwarding]. This is another example of how VS Code creates the illusion of working locally.

But there are some situations where the illusion breaks down. Developing offline is obviously no longer an option. Another example is that when developing remotely, VS Code becomes *the only* easy way to edit files. If you want to edit a bitmap in Photoshop, or open a CSV file in Excel, you'll have to figure out another way of doing so.

The vastness of VS Code's ecosystem is an interesting tangent to explore from the limitation of not only being able to edit files with anything besides VS Code. There are extensions for tasks like [editing raster graphics](https://marketplace.visualstudio.com/items?itemName=Tyriar.luna-paint), [a Draw.io editor for diagrams](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio), and [a tabular data viewer](https://marketplace.visualstudio.com/items?itemName=GrapeCity.gc-excelviewer). If you squint, VS Code starts to look more like a general purpose platform, rather than just a text editor. The fact that this platform provides in many ways a better experience than say, [VNC](https://en.wikipedia.org/wiki/Virtual_Network_Computing), is quite powerful[^vnc_vs_vs_code].

[![Draw.io Integration](/assets/2021-05-16-vs-code-draw-io-integration.gif)](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio)

The [Draw.io Integration](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio) VS Code extension by [Henning Dieterichs](https://twitter.com/hediet_dev)

Setting up and tearing down development environments at will, which Codespaces encourages, also has its downsides. If your development environment requires installing a lot of additional tools, such as compilers, linters, and other shell tools, then those tools will all need to be installed each time you create a new codespace. While Codespaces' dotfiles support can automate this, having more dependencies will make it take longer to spin up a new codespace.

Finally, the last issue I observed while using Codespaces is that each project being in its own codespace makes it harder to make changes spanning multiple projects. This comes up when performing maintenance tasks (like updating continuous integration settings for several projects at once), making changes that span multiple projects (like many an API change and then updating consumers of that API), or even just trying to search through several projects to find a piece of code I know I've already written, but I don't know where. These are all problems where organizing projects in the file-system hierarchy makes it easier to work on several related projects at once. But with Codespaces, every project is an island[^personal_use_of_codespaces].

It's also worth mentioning that there are many types of development that Codespaces isn't applicable for at all. Anything that needs access to local hardware, like mobile development, is obviously going to be out. The biggest audience for Codespaces is web developers (which not coincidentally, is the biggest audience of VS Code itself). Web development is a natural fit for remote development, since the deployment target of the project is also remote.

## Conclusion

Codespaces provides enough utility that I suspect it will find its way into many, if not most, developers' workflows. Just being able to open a Codespace to quickly explore, or make contributions to, a repository seems like enough to make it popular on its own. Not to mention being able to quickly edit a project from a machine that hasn't been setup for development[^codespaces_as_automation]. But the question I find the most interesting is whether Codespaces also has the potential *to replace* local development entirely, at least for some kinds of developer (those that aren't deploying to local hardware).

I don't expect Codespaces to win over many longtime developers, who already have sophisticated development environments setup, since Codespaces' biggest gains come from initially setting up those environments[^locked_down_devices]. The real benefit from Codespaces comes from never having to setup those local development environments in the first place, ever, over the course of a career. So what will be more interesting to watch is when new developers join projects. Without Codespaces, their first task would be to setup their development environment. With Codespaces, they can just click a button and start coding. Will developers who start working this way ever get around to setting up local development environments?[^compared_to_repl_it]

* * *

[^mac_pro_is_still_relevant]: The continued relevance of the [Mac Pro](https://www.apple.com/mac-pro/) is an example of how relevant powerful, on premises, hardware still is.

[^codespaces_is_in_beta]: Since Codespaces is still in [beta](https://en.wikipedia.org/wiki/Software_release_life_cycle#Beta), we're not going to spend any time reviewing bugs or incomplete features, which might be fixed before release. This piece is about the full promise of Codespaces and remote development when it's finished.

[^instance_types_coming]: Setting an instance type will also [come to GitHub Codespaces](https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/about-billing-for-codespaces):

    > Compute usage is billed per hour, at a rate that depends on your codespace's instance type. During the beta, Codespaces offers a single, Linux instance type. At general availability, we'll support three Linux instance types.

    It remains to be seen whether these features can be added without compromising the one-click experience.

[^self_hosted_is_missing]: At least one important feature was lost in the transition from Visual Studio Codespaces to GitHub Codespaces: [self-hosted codespaces](https://docs.microsoft.com/en-us/visualstudio/codespaces/how-to/self-hosting-vscode) (which appears to be the most requested feature on the [Codespaces Beta forum](https://github.community/c/code-to-cloud/codespaces-beta/45)). In a way, it's not surprising that it was removed, self-hosted codespaces fit more naturally into the Visual Studio Codespaces world (why not just let users swap the underlying Azure instance with their own hardware?), than they do into the GitHub Codespaces world (if a codespace is an extension of a repository on GitHub, how does using your own server make sense?).

[^previously_in_the_main_navigation]: Earlier in the beta, Codespaces was in the main GitHub navigation along the top (i.e., alongside  "Pull Requests", "Issues", "Marketplace", and "Explore"), I wonder why it was removed from there?

[^keyboard_shortcuts_on_macos]: On macOS, the difference that jumps out between running Codespaces in the browser vs. the desktop app, is that some shortcuts that normally go straight to VS Code are instead interpreted by the browser. For example `⌘W`, which closes the current split or tab, instead closes the entire browser tab.

[^codespaces_dotfiles]: In addition to installing a projects development dependencies, codespaces can also be personalized by [installing dotfiles](https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/personalizing-codespaces-for-your-account).

[^tramp_mode_is_well_regarded]: Emacs' [Tramp Mode](https://www.emacswiki.org/emacs/TrampMode) is also known for creating the illusion of working locally when editing remote files.

[^launch_json_port_forwarding]: VS Code's port forwarding also works well with [launch configurations](https://code.visualstudio.com/docs/nodejs/nodejs-debugging). A launch configuration can be setup where hitting `F5` (for `Debug: Start Debugging`) launches the server and navigates to it in your browser, and this launch configuration will work regardless of whether your project is running locally or on a remote server.

[^vnc_vs_vs_code]: VNC works by sending a video feed from the server to the client (and forwarding keyboard and mouse events to the server), whereas with VS Code the client is actually running the front-end code. VS Code's approach seems better to me, and it fixes the most glaring problem with VNC today: Video compression artifacts.

[^personal_use_of_codespaces]: I've stopped using Codespaces for my own projects. My development environment is quite elaborate (e.g., I install many shell utilities), and I also like having all of my projects organized together on the same file system, so I can do searches or make edits across related projects. Neither of these are a good fit for Codespaces.

    But I have found I like some of the benefits of remote development. In particular, it's nice to not have to use local hard drive space for things like `npm` modules, especially for smaller projects. So instead of Codespaces, I've been using Microsoft's [Remote SSH extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh), with a [VPS](https://en.wikipedia.org/wiki/Virtual_private_server). This provides some of the benefits of Codespaces, while working more seamlessly with my workflow. This approach also forgoes some of Codespaces' major selling points, like automatically setting up new development environments, and, perhaps most notably, web access via browser (it should be possible to add web access using [code-server](https://github.com/cdr/code-server), if I ever decide I need it).

[^codespaces_as_automation]: Codespaces can also be considered in terms of automation. This is [my definition of automation](https://twitter.com/robenkleene/status/1256269533255553024):

    > Software automation is the alignment of intention and action.

    > You should be able to take one action to perform your intention.

    > And ideally, that action is configurable, e.g., you can either select a menu item, press a button, or perform a keyboard shortcut.

    Codespaces takes what's normally multi-step process, e.g., checking out the source code and then setting up a development environment, and turns it into a single action: Creating an environment for running and editing a project. Codespaces similarly optimizes *finishing* with a project. Normally, when you finish with a project, you might just delete the source, but this would still leave around any dependencies that were installed globally. When you remove a codespace, all of its dependencies are automatically removed with it.

    With Codespaces, intention and action are aligned. The single action of creating or removing a codespace accomplishes the intent of creating a working development environment or completely removing it.

[^locked_down_devices]: Codespaces also presents a future for development that’s compatible with locked-down devices (e.g., iPads). I once thought creative professionals, like programmers, would eventually end up working on locked-down devices (defined here as a system that can only run [sandboxed apps](https://developer.apple.com/library/archive/documentation/Security/Conceptual/AppSandboxDesignGuide/AboutAppSandbox/AboutAppSandbox.html), but I no longer think that's the case.

[^compared_to_repl_it]: [Replit](https://repl.it/) is a start-up that's also trying to remove the effort involved in setting up and maintaining development environments. See [Replit co-founder Amjad Msaad](https://twitter.com/amasad) [discuss the original motivation behind it](https://twitter.com/Replit/status/1387112366362415104) where he describes setting up a development environment as more difficult than development itself.

    The comparison of Replit to Codespaces is that Codespaces takes existing development workflows, and works backwards to figuring out how to make it as easy as possible for new developers to join projects. Whereas Replit asks what if development prioritized making it as easy as possible for new developers to start coding from the beginning? Both of these seem like valid approaches, and will likely end up serving different segments of the market.
