# CISE

The CISE logic is able to prove that some distributed program is safe, in the sense that it maintains some application invariant of interest.

We have developed a SMT-based tool that automates CISE logic, and verified several example applications using the tool. A successful analysis proves that a given program will maintain its integrity invariants. If not, the tool provides a counter-example, which the program developer can examine, in order to adjust the program design either by weakening application semantics, and/or by adding concurrency controls, in order to disallow toxic concurrency.  
  

## Code Sample

The developer writes the properties of her program as Java annotations.

See [here](https://syncfree.lip6.fr/index.php/2-uncategorised/51-cise) for more details.

## Get started

Main dependencies:
 - Z3 4.4.0 (as in `tools`)
 - Antlr 4.5.1 (as in `tools`)

To build:

	mvn package 

To create an Eclipse project:

	mvn eclipse:eclipse

To run the examples and use the Z3's JNI integration, set the `LD_LIBRARY_PATH` environment variable
to `lib/` (with its absolute path).
 

## Main Publications

The basic idea is in a paper by Balegas et al. presented at EuroSys 2015:
> Putting Consistency back into Eventual Consistency. V. Balegas et al., EuroSys, Apr. 2015.

The logic is formalized and proved in a paper by Gotsman et al., POPL 2016.
> Cause I'm Strong Enough: Reasoning about Consistency Choices in Distributed Systems.  A. Gotsman et al., POPL, Jan. 2016
