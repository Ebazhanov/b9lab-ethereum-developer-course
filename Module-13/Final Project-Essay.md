Final Project
This exercise consists of 2 independent steps. Each of these 2 steps has its own problem and its own repository.

In step 1, we ask you to write an essay. It accounts for 20% of the final project mark.
In step 2, we ask you to complete a coding task. It accounts for 80% of the final project mark.
You need to complete step 1, before you have access to step 2. Please feel free to report issues with how this 2-step automation works on your end.

Step 1 - Essay
What it is
The project represents a regulated, system of toll roads. Vehicles pay to drive on them. It is regulated in the sense that there is an entity whose role it is to ensure some rules for participants. The end goal is to have all, part or nothing of such a somewhat decentralised system run on an Ethereum blockchain.

Participants
This project caters to all of them and they should each hold a piece of the checks and balances:

The regulator
The road operator(s)
The toll booth(s)
The vehicle(s)
The driver(s)
Prices
Prices are defined in Ethers. In other words, road operators will not launch an ICO on their "road use" token ;). You are free to decide how high the prices are, by which criteria and by whom prices are decided.

What to write
There can be a ton of problems you can imagine that such a system, running in full or partly on a blockchain, would face, from an ethical, economic, design or other perspective. Please elaborate on the problems. Describe how blockchain can solve them. Do not just shoehorn blockchain because we like it. You are highly encouraged to also explain how blockchain would make some of them worse from a design point of view or independent of the design.

For those off-chain problems, such as wireless communication or computer vision, you can just wave your hands as to how they are solved. No need to overdo it by thinking up same-day return discount, monthly discount or cross-selling opportunities.

The intent behind these 2 steps is that reasoning about how to sort out the concerns in the ideation and design stage, and structure the contracts and functions is an important part of your skill set. So in this step, you will describe how you approach the task of sorting the project requirements into an architecture, and show us that you understand the important concerns. You do not need to write Solidity contract interfaces, instead focus on plain English explanations.

What you write here has no bearing on your marks for the Step 2 - Coding.

How to submit
You have received an invitation to our Academy Git by email. If not, and it is not in your spam folder, please contact your mentors as soon as possible through the Slack channel.

You need to submit your document in one README.md file in Markdown format, in the repository named  your_name-essay available for you on the Academy Git.


You can only do 1 git push. As soon as you git push once, you will no longer be able to push.

We believe that one full page of free text is enough to describe the problems, the caveats, your doubts and your solutions.

Solution:
At the high level, smart contracts provide 

Ok,so we have several players on the market.

Regulator/government-this is a big question.
This instance kills the whole idea of decentralization since all it wants is to control the legality of actions and make sure taxes are paid properly.Hopefully sooner or later it will be replaced by AI. As for now, they obviosly want to make sure no rules were violated.
Problems:laws, compliance

Road operator wants to make sure it is a well established business model: highway is functiong properly, there are no traffic jams, fare is taken, safety regulations are enforced
Problems: succesful business model, compliance

Toll booth is an unit that collects fare.We can narrow down it`s functionality to collecting payments, sending tickets to non-payers.
Problems: payment processing

Сars are another unit that gets involved in the process.For simplicity, we only take ability safely operate on highway and use scannable devices to pay for the usage.
Problems: payment scanning, safety operation


Payments: ussally the can be either regulated by the market or the government.In our worlsd, it can be done by the following formula set in smart contract. Every week has 2 free days, they can be  randomly chosen every week.
Problems: how to set the fair price.

