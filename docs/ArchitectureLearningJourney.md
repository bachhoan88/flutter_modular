# Architecture Learning Journey

In this learning journey you will learn about the Flutter Modular app architecture: its layers, key classes and the interactions between them.


## Goals and requirements

The goals for the app architecture are:



*   Easy for developers to understand, nothing too experimental.
*   Support multiple developers working on the same codebase.
*   Facilitate local and instrumented tests, both on the developer’s machine and using Continuous Integration (CI).
*   Minimize build times.

## Architecture overview

The app architecture has three layers: a data layer, a domain layer and a UI layer.


<center>
<img src="images/architecture-1-overall.png" width="600px" alt="Diagram showing overall app architecture" />
</center>



The architecture follows a reactive programming model with unidirectional data flow(UDF). With the data layer at the bottom, the key concepts are:



*   Higher layers react to changes in lower layers.
*   Events flow down.
*   Data flows up.

The data flow is achieved using streams, implemented using [Future](https://dart.dev/codelabs/async-await).


### Example: Login action on the Login Page

Describe a basic example of login feature that contains business logic

The following diagram shows the events which occur and how data flows from the relevant objects to achieve this.


<center>
<img src="images/architecture-2-example.jpg " width="600px" alt="Diagram login feature" />
</center>