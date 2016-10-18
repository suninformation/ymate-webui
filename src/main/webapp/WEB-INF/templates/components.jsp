<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="false" %>
<%@ taglib uri="http://www.ymate.net/ymweb_core" prefix="ymweb" %>
<%@ taglib tagdir="/WEB-INF/tags/bootstrap" prefix="bs" %>
<ymweb:ui src="base/bootstrap">
    <ymweb:property name="title">WebUI | YMP - yMate.Net</ymweb:property>
    <ymweb:css href="assets/styles/doc.min.css" type="text/css"/>
    <ymweb:css href="assets/styles/patch.css" type="text/css"/>
    <ymweb:script src="assets/scripts/doc.min.js"/>
    <ymweb:script><script>
            $(function () {
                $('[data-tip="tooltip"]').tooltip();
                $('[data-popover="popover"]').popover();
            });
    </script></ymweb:script>
    <ymweb:layout>
        <!-- NavBar -->
        <bs:docs-navbar staticTop="false" container="true" collapseId="main">
            <jsp:attribute name="brand">WebUI</jsp:attribute>
            <jsp:body>
                <bs:nav navbar="true">
                    <bs:item href="#">Getting Started</bs:item>
                    <bs:item href="#" active="true">Components</bs:item>
                    <bs:item href="#">Plugins</bs:item>
                    <bs:item href="#">Tags</bs:item>
                </bs:nav>
                <bs:nav navbar="true" right="true">
                    <bs:item href="#"><bs:icon fa="true" style="github" faW="true">GitHub</bs:icon></bs:item>
                </bs:nav>
            </jsp:body>
        </bs:docs-navbar>
        <!-- Header -->
        <bs:docs-header container="true">
            <bs:row>
                <bs:col md="12">
                    <h1>WebUI</h1>
                    <bs:text lead="true">A JSP taglib for Bootstrap3.</bs:text>
                </bs:col>
            </bs:row>
        </bs:docs-header>
        <!-- Container -->
        <bs:docs-container>
            <bs:row>
                <bs:col md="9">
                    <!-- Docs: NavBar -->
                    <bs:docs-section>
                        <bs:docs-section-header>Navbar</bs:docs-section-header>
                        <bs:docs-example>
                            <bs:navbar container="true" brand="Brand" collapseId="example1">
                                <bs:nav navbar="true">
                                    <bs:item href="#" active="true">Link</bs:item>
                                    <bs:item href="#">Link</bs:item>
                                    <bs:item dropdown="true">
                                        <jsp:attribute name="title">Dropdown <bs:icon caret="true"/></jsp:attribute>
                                        <jsp:body>
                                            <bs:item href="#">Action</bs:item>
                                            <bs:item href="#">Another action</bs:item>
                                            <bs:item href="#">Something else here</bs:item>
                                            <bs:item divider="true"/>
                                            <bs:item href="#">Separated link</bs:item>
                                            <bs:item divider="true"/>
                                            <bs:item href="#">One more separated link</bs:item>
                                        </jsp:body>
                                    </bs:item>
                                </bs:nav>
                                <bs:form navbar="true" left="true">
                                    <bs:input-group>
                                        <bs:form-control type="text" placeholder="Search"/>
                                        <bs:input-group addon="true" btn="true">
                                            <bs:button type="submit" style="default">Submit</bs:button>
                                        </bs:input-group>
                                    </bs:input-group>
                                </bs:form>
                                <bs:nav navbar="true" right="true">
                                    <bs:item href="#">Link</bs:item>
                                </bs:nav>
                            </bs:navbar>
                            <bs:navbar container="true" brand="Brand" inverse="true" collapseId="example2">
                                <bs:nav navbar="true">
                                    <bs:item href="#" active="true">Link</bs:item>
                                    <bs:item href="#">Link</bs:item>
                                    <bs:item dropdown="true">
                                        <jsp:attribute name="title">Dropdown <bs:icon caret="true"/></jsp:attribute>
                                        <jsp:body>
                                            <bs:item href="#">Action</bs:item>
                                            <bs:item href="#">Another action</bs:item>
                                            <bs:item href="#">Something else here</bs:item>
                                            <bs:item divider="true"/>
                                            <bs:item href="#">Separated link</bs:item>
                                            <bs:item divider="true"/>
                                            <bs:item href="#">One more separated link</bs:item>
                                        </jsp:body>
                                    </bs:item>
                                </bs:nav>
                                <bs:form navbar="true" left="true">
                                    <bs:input-group>
                                        <bs:form-control type="text" placeholder="Search"/>
                                        <bs:input-group addon="true" btn="true">
                                            <bs:button type="submit" style="default">Submit</bs:button>
                                        </bs:input-group>
                                    </bs:input-group>
                                </bs:form>
                                <bs:nav navbar="true" right="true">
                                    <bs:item href="#">Link</bs:item>
                                </bs:nav>
                            </bs:navbar>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:navbar container="true" brand="Brand" collapseId="example1"&gt;<br>    &lt;bs:nav navbar="true"&gt;<br>        &lt;bs:item href="#" active="true"&gt;Link&lt;/bs:item&gt;<br>        &lt;bs:item href="#"&gt;Link&lt;/bs:item&gt;<br>        &lt;bs:item dropdown="true"&gt;<br>            &lt;jsp:attribute name="title"&gt;Dropdown &lt;bs:icon caret="true"/&gt;&lt;/jsp:attribute&gt;<br>            &lt;jsp:body&gt;<br>                &lt;bs:item href="#"&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider="true"/&gt;<br>                &lt;bs:item href="#"&gt;Separated link&lt;/bs:item&gt;<br>                &lt;bs:item divider="true"/&gt;<br>                &lt;bs:item href="#"&gt;One more separated link&lt;/bs:item&gt;<br>            &lt;/jsp:body&gt;<br>        &lt;/bs:item&gt;<br>    &lt;/bs:nav&gt;<br>    &lt;bs:form navbar="true" left="true"&gt;<br>        &lt;bs:input-group&gt;<br>            &lt;bs:form-control type="text" placeholder="Search"/&gt;<br>            &lt;bs:input-group addon="true" btn="true"&gt;<br>                &lt;bs:button type="submit" style="default"&gt;Submit&lt;/bs:button&gt;<br>            &lt;/bs:input-group&gt;<br>        &lt;/bs:input-group&gt;<br>    &lt;/bs:form&gt;<br>    &lt;bs:nav navbar="true" right="true"&gt;<br>        &lt;bs:item href="#"&gt;Link&lt;/bs:item&gt;<br>    &lt;/bs:nav&gt;<br>&lt;/bs:navbar&gt;</pre><pre><br>&lt;bs:navbar container="true" brand="Brand" inverse="true" collapseId="example2"&gt;<br>    ......<br>&lt;/bs:navbar&gt;</pre>
                        </bs:docs-highlight>
                    </bs:docs-section>
                    <!-- Docs: Buttons -->
                    <bs:docs-section>
                        <bs:docs-section-header>Buttons</bs:docs-section-header>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="12">
                                    <p>
                                        <bs:button style="default">Default</bs:button>
                                        <bs:button style="primary">Primary</bs:button>
                                        <bs:button style="success">Success</bs:button>
                                        <bs:button style="info">Info</bs:button>
                                        <bs:button style="warning">Warning</bs:button>
                                        <bs:button style="danger">Danger</bs:button>
                                        <bs:button style="link">Link</bs:button>
                                    </p>
                                    <p>
                                        <bs:button style="default" disabled="true">Default</bs:button>
                                        <bs:button style="primary" disabled="true">Primary</bs:button>
                                        <bs:button style="success" disabled="true">Success</bs:button>
                                        <bs:button style="info" disabled="true">Info</bs:button>
                                        <bs:button style="warning" disabled="true">Warning</bs:button>
                                        <bs:button style="danger" disabled="true">Danger</bs:button>
                                        <bs:button style="link" disabled="true">Link</bs:button>
                                    </p>
                                    <p>
                                        <bs:button style="primary" large="true">Large button</bs:button>
                                        <bs:button style="primary">Default button</bs:button>
                                        <bs:button style="primary" small="true">Small button</bs:button>
                                        <bs:button style="primary" mini="true">Mini button</bs:button>
                                    </p>
                                    <p>
                                        <bs:button-group toolbar="true">
                                            <bs:button-group>
                                                <bs:button style="default">Default</bs:button>
                                                <bs:button style="default" dropdown="true"><bs:icon caret="true"/></bs:button>
                                                <bs:dropdown-menu>
                                                    <bs:item href="#">Action</bs:item>
                                                    <bs:item href="#">Another action</bs:item>
                                                    <bs:item href="#">Something else here</bs:item>
                                                    <bs:item divider="true"/>
                                                    <bs:item href="#">Separated link</bs:item>
                                                </bs:dropdown-menu>
                                            </bs:button-group>
                                            <bs:button-group>
                                                <bs:button style="primary">Primary</bs:button>
                                                <bs:button style="primary" dropdown="true"><bs:icon caret="true"/></bs:button>
                                                <bs:dropdown-menu>
                                                    <bs:item href="#">Action</bs:item>
                                                    <bs:item href="#">Another action</bs:item>
                                                    <bs:item href="#">Something else here</bs:item>
                                                    <bs:item divider="true"/>
                                                    <bs:item href="#">Separated link</bs:item>
                                                </bs:dropdown-menu>
                                            </bs:button-group>
                                            <bs:button-group>
                                                <bs:button style="success">Success</bs:button>
                                                <bs:button style="success" dropdown="true"><bs:icon caret="true"/></bs:button>
                                                <bs:dropdown-menu>
                                                    <bs:item href="#">Action</bs:item>
                                                    <bs:item href="#">Another action</bs:item>
                                                    <bs:item href="#">Something else here</bs:item>
                                                    <bs:item divider="true"/>
                                                    <bs:item href="#">Separated link</bs:item>
                                                </bs:dropdown-menu>
                                            </bs:button-group>
                                            <bs:button-group>
                                                <bs:button style="warning">Warning</bs:button>
                                                <bs:button style="warning" dropdown="true"><bs:icon caret="true"/></bs:button>
                                                <bs:dropdown-menu>
                                                    <bs:item href="#">Action</bs:item>
                                                    <bs:item href="#">Another action</bs:item>
                                                    <bs:item href="#">Something else here</bs:item>
                                                    <bs:item divider="true"/>
                                                    <bs:item href="#">Separated link</bs:item>
                                                </bs:dropdown-menu>
                                            </bs:button-group>
                                            <bs:button-group>
                                                <bs:button style="info">Info</bs:button>
                                                <bs:button style="info" dropdown="true"><bs:icon caret="true"/></bs:button>
                                                <bs:dropdown-menu>
                                                    <bs:item href="#">Action</bs:item>
                                                    <bs:item href="#">Another action</bs:item>
                                                    <bs:item href="#">Something else here</bs:item>
                                                    <bs:item divider="true"/>
                                                    <bs:item href="#">Separated link</bs:item>
                                                </bs:dropdown-menu>
                                            </bs:button-group>
                                        </bs:button-group>
                                    </p>
                                    <p>
                                        <bs:button style="default" block="true">Block level button</bs:button>
                                    </p>
                                    <p>
                                        <bs:button-group justified="true">
                                            <bs:button style="default" link="true">Left</bs:button>
                                            <bs:button style="default" link="true">Middle</bs:button>
                                            <bs:button style="default" link="true">Right</bs:button>
                                        </bs:button-group>
                                    </p>
                                    <p>
                                        <bs:button-group toolbar="true">
                                            <bs:button-group>
                                                <bs:button style="default">1</bs:button>
                                                <bs:button style="default">2</bs:button>
                                                <bs:button style="default">3</bs:button>
                                            </bs:button-group>
                                            <bs:button-group>
                                                <bs:button style="default" link="true">4</bs:button>
                                                <bs:button style="default" link="true">5</bs:button>
                                                <bs:button style="default" link="true">6</bs:button>
                                            </bs:button-group>
                                            <bs:button-group>
                                                <bs:button style="default">7</bs:button>
                                                <bs:button-group>
                                                    <bs:button style="default" dropdown="true">Dropdown <bs:icon caret="true"/></bs:button>
                                                    <bs:dropdown-menu>
                                                        <bs:item href="#">Action</bs:item>
                                                        <bs:item href="#">Another action</bs:item>
                                                        <bs:item href="#">Something else here</bs:item>
                                                        <bs:item divider="true"/>
                                                        <bs:item href="#">Separated link</bs:item>
                                                    </bs:dropdown-menu>
                                                </bs:button-group>
                                            </bs:button-group>
                                        </bs:button-group>
                                    </p>
                                    <p>
                                        <bs:button-group vertical="true">
                                            <bs:button style="default">Button</bs:button>
                                            <bs:button style="default">Button</bs:button>
                                            <bs:button style="default">Button</bs:button>
                                        </bs:button-group>
                                    </p>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;p&gt;<br>    &lt;bs:button style="default"&gt;Default&lt;/bs:button&gt;<br>    &lt;bs:button style="primary"&gt;Primary&lt;/bs:button&gt;<br>    &lt;bs:button style="success"&gt;Success&lt;/bs:button&gt;<br>    &lt;bs:button style="info"&gt;Info&lt;/bs:button&gt;<br>    &lt;bs:button style="warning"&gt;Warning&lt;/bs:button&gt;<br>    &lt;bs:button style="danger"&gt;Danger&lt;/bs:button&gt;<br>    &lt;bs:button style="link"&gt;Link&lt;/bs:button&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button style="default" disabled="true"&gt;Default&lt;/bs:button&gt;<br>    &lt;bs:button style="primary" disabled="true"&gt;Primary&lt;/bs:button&gt;<br>    &lt;bs:button style="success" disabled="true"&gt;Success&lt;/bs:button&gt;<br>    &lt;bs:button style="info" disabled="true"&gt;Info&lt;/bs:button&gt;<br>    &lt;bs:button style="warning" disabled="true"&gt;Warning&lt;/bs:button&gt;<br>    &lt;bs:button style="danger" disabled="true"&gt;Danger&lt;/bs:button&gt;<br>    &lt;bs:button style="link" disabled="true"&gt;Link&lt;/bs:button&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button style="primary" large="true"&gt;Large button&lt;/bs:button&gt;<br>    &lt;bs:button style="primary"&gt;Default button&lt;/bs:button&gt;<br>    &lt;bs:button style="primary" small="true"&gt;Small button&lt;/bs:button&gt;<br>    &lt;bs:button style="primary" mini="true"&gt;Mini button&lt;/bs:button&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button-group toolbar="true"&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style="default"&gt;Default&lt;/bs:button&gt;<br>            &lt;bs:button style="default" dropdown="true"&gt;&lt;bs:icon caret="true"/&gt;&lt;/bs:button&gt;<br>            &lt;bs:dropdown-menu&gt;<br>                &lt;bs:item href="#"&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider="true"/&gt;<br>                &lt;bs:item href="#"&gt;Separated link&lt;/bs:item&gt;<br>            &lt;/bs:dropdown-menu&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style="primary"&gt;Primary&lt;/bs:button&gt;<br>            &lt;bs:button style="primary" dropdown="true"&gt;&lt;bs:icon caret="true"/&gt;&lt;/bs:button&gt;<br>            &lt;bs:dropdown-menu&gt;<br>                &lt;bs:item href="#"&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider="true"/&gt;<br>                &lt;bs:item href="#"&gt;Separated link&lt;/bs:item&gt;<br>            &lt;/bs:dropdown-menu&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style="success"&gt;Success&lt;/bs:button&gt;<br>            &lt;bs:button style="success" dropdown="true"&gt;&lt;bs:icon caret="true"/&gt;&lt;/bs:button&gt;<br>            &lt;bs:dropdown-menu&gt;<br>                &lt;bs:item href="#"&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider="true"/&gt;<br>                &lt;bs:item href="#"&gt;Separated link&lt;/bs:item&gt;<br>            &lt;/bs:dropdown-menu&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style="warning"&gt;Warning&lt;/bs:button&gt;<br>            &lt;bs:button style="warning" dropdown="true"&gt;&lt;bs:icon caret="true"/&gt;&lt;/bs:button&gt;<br>            &lt;bs:dropdown-menu&gt;<br>                &lt;bs:item href="#"&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider="true"/&gt;<br>                &lt;bs:item href="#"&gt;Separated link&lt;/bs:item&gt;<br>            &lt;/bs:dropdown-menu&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style="info"&gt;Info&lt;/bs:button&gt;<br>            &lt;bs:button style="info" dropdown="true"&gt;&lt;bs:icon caret="true"/&gt;&lt;/bs:button&gt;<br>            &lt;bs:dropdown-menu&gt;<br>                &lt;bs:item href="#"&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href="#"&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider="true"/&gt;<br>                &lt;bs:item href="#"&gt;Separated link&lt;/bs:item&gt;<br>            &lt;/bs:dropdown-menu&gt;<br>        &lt;/bs:button-group&gt;<br>    &lt;/bs:button-group&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button style="default" block="true"&gt;Block level button&lt;/bs:button&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button-group justified="true"&gt;<br>        &lt;bs:button style="default" link="true"&gt;Left&lt;/bs:button&gt;<br>        &lt;bs:button style="default" link="true"&gt;Middle&lt;/bs:button&gt;<br>        &lt;bs:button style="default" link="true"&gt;Right&lt;/bs:button&gt;<br>    &lt;/bs:button-group&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button-group toolbar="true"&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style="default"&gt;1&lt;/bs:button&gt;<br>            &lt;bs:button style="default"&gt;2&lt;/bs:button&gt;<br>            &lt;bs:button style="default"&gt;3&lt;/bs:button&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style="default" link="true"&gt;4&lt;/bs:button&gt;<br>            &lt;bs:button style="default" link="true"&gt;5&lt;/bs:button&gt;<br>            &lt;bs:button style="default" link="true"&gt;6&lt;/bs:button&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style="default"&gt;7&lt;/bs:button&gt;<br>            &lt;bs:button-group&gt;<br>                &lt;bs:button style="default" dropdown="true"&gt;Dropdown &lt;bs:icon caret="true"/&gt;&lt;/bs:button&gt;<br>                &lt;bs:dropdown-menu&gt;<br>                    &lt;bs:item href="#"&gt;Action&lt;/bs:item&gt;<br>                    &lt;bs:item href="#"&gt;Another action&lt;/bs:item&gt;<br>                    &lt;bs:item href="#"&gt;Something else here&lt;/bs:item&gt;<br>                    &lt;bs:item divider="true"/&gt;<br>                    &lt;bs:item href="#"&gt;Separated link&lt;/bs:item&gt;<br>                &lt;/bs:dropdown-menu&gt;<br>            &lt;/bs:button-group&gt;<br>        &lt;/bs:button-group&gt;<br>    &lt;/bs:button-group&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button-group vertical="true"&gt;<br>        &lt;bs:button style="default"&gt;Button&lt;/bs:button&gt;<br>        &lt;bs:button style="default"&gt;Button&lt;/bs:button&gt;<br>        &lt;bs:button style="default"&gt;Button&lt;/bs:button&gt;<br>    &lt;/bs:button-group&gt;<br>&lt;/p&gt;</pre>
                        </bs:docs-highlight>
                    </bs:docs-section>
                    <!-- Docs: Typography -->
                    <bs:docs-section>
                        <bs:docs-section-header>Typography</bs:docs-section-header>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="6">
                                    <h1>Heading 1</h1>
                                    <h2>Heading 2</h2>
                                    <h3>Heading 3</h3>
                                    <h4>Heading 4</h4>
                                    <h5>Heading 5</h5>
                                    <h6>Heading 6</h6>
                                    <bs:text lead="true">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</bs:text>
                                </bs:col>
                                <bs:col md="6">
                                    <h2>Example body text</h2>
                                    <p>Nullam quis risus eget <a href="#">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
                                    <p><small>This line of text is meant to be treated as fine print.</small></p>
                                    <p>The following snippet of text is <strong>rendered as bold text</strong>.</p>
                                    <p>The following snippet of text is <em>rendered as italicized text</em>.</p>
                                    <p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="6">
                                    <h2>Emphasis classes</h2>
                                    <bs:text style="muted">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</bs:text>
                                    <bs:text style="primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</bs:text>
                                    <bs:text style="warning">Etiam porta sem malesuada magna mollis euismod.</bs:text>
                                    <bs:text style="danger">Donec ullamcorper nulla non metus auctor fringilla.</bs:text>
                                    <bs:text style="success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</bs:text>
                                    <bs:text style="info">Maecenas sed diam eget risus varius blandit sit amet non magna.</bs:text>
                                </bs:col>
                                <bs:col md="6">
                                    <bs:row>
                                        <bs:col md="12">
                                            <h2>Blockquotes</h2>
                                        </bs:col>
                                        <bs:col md="12">
                                            <bs:blockquote>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                                                <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                                            </bs:blockquote>
                                        </bs:col>
                                        <bs:col md="12">
                                            <bs:blockquote reverse="true">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                                                <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                                            </bs:blockquote>
                                        </bs:col>
                                    </bs:row>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;h1&gt;Heading 1&lt;/h1&gt;<br>        &lt;h2&gt;Heading 2&lt;/h2&gt;<br>        &lt;h3&gt;Heading 3&lt;/h3&gt;<br>        &lt;h4&gt;Heading 4&lt;/h4&gt;<br>        &lt;h5&gt;Heading 5&lt;/h5&gt;<br>        &lt;h6&gt;Heading 6&lt;/h6&gt;<br>        &lt;bs:text lead="true"&gt;Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.&lt;/bs:text&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;h2&gt;Example body text&lt;/h2&gt;<br>        &lt;p&gt;Nullam quis risus eget &lt;a href="#"&gt;urna mollis ornare&lt;/a&gt; vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.&lt;/p&gt;<br>        &lt;p&gt;&lt;small&gt;This line of text is meant to be treated as fine print.&lt;/small&gt;&lt;/p&gt;<br>        &lt;p&gt;The following snippet of text is &lt;strong&gt;rendered as bold text&lt;/strong&gt;.&lt;/p&gt;<br>        &lt;p&gt;The following snippet of text is &lt;em&gt;rendered as italicized text&lt;/em&gt;.&lt;/p&gt;<br>        &lt;p&gt;An abbreviation of the word attribute is &lt;abbr title="attribute"&gt;attr&lt;/abbr&gt;.&lt;/p&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;h2&gt;Emphasis classes&lt;/h2&gt;<br>        &lt;bs:text style="muted"&gt;Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.&lt;/bs:text&gt;<br>        &lt;bs:text style="primary"&gt;Nullam id dolor id nibh ultricies vehicula ut id elit.&lt;/bs:text&gt;<br>        &lt;bs:text style="warning"&gt;Etiam porta sem malesuada magna mollis euismod.&lt;/bs:text&gt;<br>        &lt;bs:text style="danger"&gt;Donec ullamcorper nulla non metus auctor fringilla.&lt;/bs:text&gt;<br>        &lt;bs:text style="success"&gt;Duis mollis, est non commodo luctus, nisi erat porttitor ligula.&lt;/bs:text&gt;<br>        &lt;bs:text style="info"&gt;Maecenas sed diam eget risus varius blandit sit amet non magna.&lt;/bs:text&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md="12"&gt;<br>                &lt;h2&gt;Blockquotes&lt;/h2&gt;<br>            &lt;/bs:col&gt;<br>            &lt;bs:col md="12"&gt;<br>                &lt;bs:blockquote&gt;<br>                    &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;<br>                    &lt;small&gt;Someone famous in &lt;cite title="Source Title"&gt;Source Title&lt;/cite&gt;&lt;/small&gt;<br>                &lt;/bs:blockquote&gt;<br>            &lt;/bs:col&gt;<br>            &lt;bs:col md="12"&gt;<br>                &lt;bs:blockquote reverse="true"&gt;<br>                    &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;<br>                    &lt;small&gt;Someone famous in &lt;cite title="Source Title"&gt;Source Title&lt;/cite&gt;&lt;/small&gt;<br>                &lt;/bs:blockquote&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </bs:docs-highlight>
                    </bs:docs-section>
                    <!-- Docs: Tables -->
                    <bs:docs-section>
                        <bs:docs-section-header>Tables</bs:docs-section-header>
                        <bs:docs-example>
                            <bs:table striped="true" hover="true" bordered="true" responsive="true" condensed="true">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Column heading</th>
                                    <th>Column heading</th>
                                    <th>Column heading</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="info">
                                    <td>3</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="success">
                                    <td>4</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="danger">
                                    <td>5</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="warning">
                                    <td>6</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                <tr class="active">
                                    <td>7</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                    <td>Column content</td>
                                </tr>
                                </tbody>
                            </bs:table>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:table striped="true" hover="true" bordered="true" responsive="true" condensed="true"&gt;<br>    &lt;thead&gt;<br>    &lt;tr&gt;<br>        &lt;th&gt;#&lt;/th&gt;<br>        &lt;th&gt;Column heading&lt;/th&gt;<br>        &lt;th&gt;Column heading&lt;/th&gt;<br>        &lt;th&gt;Column heading&lt;/th&gt;<br>    &lt;/tr&gt;<br>    &lt;/thead&gt;<br>    &lt;tbody&gt;<br>    &lt;tr&gt;<br>        &lt;td&gt;1&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>    &lt;/tr&gt;<br>    &lt;tr&gt;<br>        &lt;td&gt;2&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>    &lt;/tr&gt;<br>    &lt;tr class="info"&gt;<br>        &lt;td&gt;3&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>    &lt;/tr&gt;<br>    &lt;tr class="success"&gt;<br>        &lt;td&gt;4&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>    &lt;/tr&gt;<br>    &lt;tr class="danger"&gt;<br>        &lt;td&gt;5&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>    &lt;/tr&gt;<br>    &lt;tr class="warning"&gt;<br>        &lt;td&gt;6&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>    &lt;/tr&gt;<br>    &lt;tr class="active"&gt;<br>        &lt;td&gt;7&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>    &lt;/tr&gt;<br>    &lt;/tbody&gt;<br>&lt;/bs:table&gt;</pre>
                        </bs:docs-highlight>
                    </bs:docs-section>
                    <!-- Docs: Forms -->
                    <bs:docs-section>
                        <bs:docs-section-header>Forms</bs:docs-section-header>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="12">
                                    <bs:well>
                                        <bs:form horizontal="true" legend="Legend">
                                            <bs:form-group>
                                                <bs:form-control type="text" label="Email" labelWidth="2"
                                                                 _id="inputEmail" placeholder="Email"/>
                                            </bs:form-group>
                                            <bs:form-group>
                                                <bs:form-control type="password" label="Password" labelWidth="2"
                                                                 _id="inputPassword" placeholder="Password">
                                                    <bs:form-control-checkbox>Remember Me</bs:form-control-checkbox>
                                                </bs:form-control>
                                            </bs:form-group>
                                            <bs:form-group>
                                                <bs:form-control type="textarea" label="Textarea" labelWidth="2"
                                                                 _id="textArea" value="Textarea"
                                                                 helpBlock="A longer block of help text that breaks onto a new line and may extend beyond one line."/>
                                            </bs:form-group>
                                            <bs:form-group>
                                                <bs:form-control type="radio" label="Radios" labelWidth="2">
                                                    <bs:form-control-radio name="optionRadios" value="option1"
                                                                           checked="true">Option one is this</bs:form-control-radio>
                                                    <bs:form-control-radio name="optionRadios"
                                                                           value="option2">Option two can be something else</bs:form-control-radio>
                                                </bs:form-control>
                                            </bs:form-group>
                                            <bs:form-group>
                                                <bs:form-control type="select" label="Selects" labelWidth="2"
                                                                 name="select1" _id="select1">
                                                    <bs:form-control-option value="option1">1</bs:form-control-option>
                                                    <bs:form-control-option value="option2"
                                                                            selected="true">2</bs:form-control-option>
                                                    <bs:form-control-option value="option3">3</bs:form-control-option>
                                                </bs:form-control>
                                            </bs:form-group>
                                            <bs:form-group>
                                                <bs:form-control type="select" multiple="true" label="Multiple"
                                                                 labelWidth="2" name="select2" _id="select2">
                                                    <bs:form-control-option value="option1">1</bs:form-control-option>
                                                    <bs:form-control-option value="option2"
                                                                            selected="true">2</bs:form-control-option>
                                                    <bs:form-control-option value="option3">3</bs:form-control-option>
                                                    <bs:form-control-option value="option4"
                                                                            selected="true">4</bs:form-control-option>
                                                    <bs:form-control-option value="option5">5</bs:form-control-option>
                                                </bs:form-control>
                                            </bs:form-group>
                                            <bs:form-group>
                                                <bs:col md="10" mdOffset="2">
                                                    <bs:button type="submit" style="primary">Submit</bs:button>
                                                    <bs:button type="reset" style="default">Cancel</bs:button>
                                                </bs:col>
                                            </bs:form-group>
                                        </bs:form>
                                    </bs:well>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:well&gt;<br>    &lt;bs:form horizontal="true" legend="Legend"&gt;<br>        &lt;bs:form-group&gt;<br>            &lt;bs:form-control type="text" label="Email" labelWidth="2"<br>                             _id="inputEmail" placeholder="Email"/&gt;<br>        &lt;/bs:form-group&gt;<br>        &lt;bs:form-group&gt;<br>            &lt;bs:form-control type="password" label="Password" labelWidth="2"<br>                             _id="inputPassword" placeholder="Password"&gt;<br>                &lt;bs:form-control-checkbox&gt;Remember Me&lt;/bs:form-control-checkbox&gt;<br>            &lt;/bs:form-control&gt;<br>        &lt;/bs:form-group&gt;<br>        &lt;bs:form-group&gt;<br>            &lt;bs:form-control type="textarea" label="Textarea" labelWidth="2"<br>                             _id="textArea" value="Textarea"<br>                             helpBlock="A longer block of help text that breaks onto a new line and may extend beyond one line."/&gt;<br>        &lt;/bs:form-group&gt;<br>        &lt;bs:form-group&gt;<br>            &lt;bs:form-control type="radio" label="Radios" labelWidth="2"&gt;<br>                &lt;bs:form-control-radio name="optionRadios" value="option1"<br>                                       checked="true"&gt;Option one is this&lt;/bs:form-control-radio&gt;<br>                &lt;bs:form-control-radio name="optionRadios"<br>                                       value="option2"&gt;Option two can be something else&lt;/bs:form-control-radio&gt;<br>            &lt;/bs:form-control&gt;<br>        &lt;/bs:form-group&gt;<br>        &lt;bs:form-group&gt;<br>            &lt;bs:form-control type="select" label="Selects" labelWidth="2"<br>                             name="select1" _id="select1"&gt;<br>                &lt;bs:form-control-option value="option1"&gt;1&lt;/bs:form-control-option&gt;<br>                &lt;bs:form-control-option value="option2"<br>                                        selected="true"&gt;2&lt;/bs:form-control-option&gt;<br>                &lt;bs:form-control-option value="option3"&gt;3&lt;/bs:form-control-option&gt;<br>            &lt;/bs:form-control&gt;<br>        &lt;/bs:form-group&gt;<br>        &lt;bs:form-group&gt;<br>            &lt;bs:form-control type="select" multiple="true" label="Multiple"<br>                             labelWidth="2" name="select2" _id="select2"&gt;<br>                &lt;bs:form-control-option value="option1"&gt;1&lt;/bs:form-control-option&gt;<br>                &lt;bs:form-control-option value="option2"<br>                                        selected="true"&gt;2&lt;/bs:form-control-option&gt;<br>                &lt;bs:form-control-option value="option3"&gt;3&lt;/bs:form-control-option&gt;<br>                &lt;bs:form-control-option value="option4"<br>                                        selected="true"&gt;4&lt;/bs:form-control-option&gt;<br>                &lt;bs:form-control-option value="option5"&gt;5&lt;/bs:form-control-option&gt;<br>            &lt;/bs:form-control&gt;<br>        &lt;/bs:form-group&gt;<br>        &lt;bs:form-group&gt;<br>            &lt;bs:col md="10" mdOffset="2"&gt;<br>                &lt;bs:button type="submit" style="primary"&gt;Submit&lt;/bs:button&gt;<br>                &lt;bs:button type="reset" style="default"&gt;Cancel&lt;/bs:button&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:form-group&gt;<br>    &lt;/bs:form&gt;<br>&lt;/bs:well&gt;</pre>
                        </bs:docs-highlight>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="12">
                                    <bs:form>
                                        <bs:form-group>
                                            <bs:form-control _id="focusedInput" type="text" label="Focused input" value="This is focused..."/>
                                        </bs:form-group>
                                        <bs:form-group>
                                            <bs:form-control _id="disabledInput" type="text" label="Disabled input" disabled="true" placeholder="Disabled input here..."/>
                                        </bs:form-group>
                                        <bs:form-group hasWarning="true">
                                            <bs:form-control _id="inputWarning" type="text" label="Input warning"/>
                                        </bs:form-group>
                                        <bs:form-group hasError="true">
                                            <bs:form-control _id="inputError" type="text" label="Input error"/>
                                        </bs:form-group>
                                        <bs:form-group hasSuccess="true">
                                            <bs:form-control _id="inputSuccess" type="text" label="Input Success"/>
                                        </bs:form-group>
                                        <bs:form-group large="true">
                                            <bs:form-control _id="largeInput" type="text" label="Large input"/>
                                        </bs:form-group>
                                        <bs:form-group small="true">
                                            <bs:form-control _id="smallInput" type="text" label="Small input"/>
                                        </bs:form-group>
                                        <bs:form-group>
                                            <bs:form-control _id="defaultInput" type="text" label="Default input"/>
                                        </bs:form-group>
                                        <bs:form-group>
                                            <bs:form-control label="Input addons">
                                                <bs:input-group>
                                                    <bs:input-group addon="true">$</bs:input-group>
                                                    <bs:form-control type="text"/>
                                                    <bs:input-group addon="true" btn="true">
                                                        <bs:button style="default">Button</bs:button>
                                                    </bs:input-group>
                                                </bs:input-group>
                                            </bs:form-control>
                                        </bs:form-group>
                                    </bs:form>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:form&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:form-control _id="focusedInput" type="text" label="Focused input" value="This is focused..."/&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:form-control _id="disabledInput" type="text" label="Disabled input" disabled="true" placeholder="Disabled input here..."/&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group hasWarning="true"&gt;<br>        &lt;bs:form-control _id="inputWarning" type="text" label="Input warning"/&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group hasError="true"&gt;<br>        &lt;bs:form-control _id="inputError" type="text" label="Input error"/&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group hasSuccess="true"&gt;<br>        &lt;bs:form-control _id="inputSuccess" type="text" label="Input Success"/&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group large="true"&gt;<br>        &lt;bs:form-control _id="largeInput" type="text" label="Large input"/&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group small="true"&gt;<br>        &lt;bs:form-control _id="smallInput" type="text" label="Small input"/&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:form-control _id="defaultInput" type="text" label="Default input"/&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:form-control label="Input addons"&gt;<br>            &lt;bs:input-group&gt;<br>                &lt;bs:input-group addon="true"&gt;$&lt;/bs:input-group&gt;<br>                &lt;bs:form-control type="text"/&gt;<br>                &lt;bs:input-group addon="true" btn="true"&gt;<br>                    &lt;bs:button style="default"&gt;Button&lt;/bs:button&gt;<br>                &lt;/bs:input-group&gt;<br>            &lt;/bs:input-group&gt;<br>        &lt;/bs:form-control&gt;<br>    &lt;/bs:form-group&gt;<br>&lt;/bs:form&gt;</pre>
                        </bs:docs-highlight>
                    </bs:docs-section>
                    <!-- Docs: Navs-->
                    <bs:docs-section>
                        <bs:docs-section-header>Navs</bs:docs-section-header>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="6">
                                    <h2>Tabs</h2>
                                    <bs:nav tabs="true" _style="margin-bottom: 15px;">
                                        <bs:item tabId="home" active="true">Home</bs:item>
                                        <bs:item tabId="profile">Profile</bs:item>
                                        <bs:item href="javascript:;" disabled="true">Disabled</bs:item>
                                        <bs:item dropdown="true">
                                            <jsp:attribute name="title">Dropdown <bs:icon caret="true"/></jsp:attribute>
                                            <jsp:body>
                                                <bs:item tabId="dropdown1">Action</bs:item>
                                                <bs:item divider="true"/>
                                                <bs:item tabId="dropdown2">Another action</bs:item>
                                            </jsp:body>
                                        </bs:item>
                                    </bs:nav>
                                    <bs:tabs>
                                        <bs:panel _id="home" tabs="true" active="true">
                                            <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                                        </bs:panel>
                                        <bs:panel _id="profile" tabs="true">
                                            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
                                        </bs:panel>
                                        <bs:panel _id="dropdown1" tabs="true">
                                            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
                                        </bs:panel>
                                        <bs:panel _id="dropdown2" tabs="true">
                                            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
                                        </bs:panel>
                                    </bs:tabs>
                                </bs:col>
                                <bs:col md="6">
                                    <h2>Pills</h2>
                                    <bs:nav pills="true">
                                        <bs:item href="#" active="true">Home</bs:item>
                                        <bs:item href="#">Profile <bs:badge>12</bs:badge></bs:item>
                                        <bs:item href="#" disabled="true">Disabled</bs:item>
                                        <bs:item dropdown="true">
                                            <jsp:attribute name="title">Dropdown <bs:icon caret="true"/></jsp:attribute>
                                            <jsp:body>
                                                <bs:item href="#">Action</bs:item>
                                                <bs:item divider="true"/>
                                                <bs:item href="#">Another action</bs:item>
                                            </jsp:body>
                                        </bs:item>
                                    </bs:nav>
                                    <br>
                                    <bs:nav pills="true" stacked="true">
                                        <bs:item href="#" active="true">Home</bs:item>
                                        <bs:item href="#">Profile <bs:badge>12</bs:badge></bs:item>
                                        <bs:item href="#" disabled="true">Disabled</bs:item>
                                        <bs:item dropdown="true">
                                            <jsp:attribute name="title">Dropdown <bs:icon caret="true"/></jsp:attribute>
                                            <jsp:body>
                                                <bs:item href="#">Action</bs:item>
                                                <bs:item divider="true"/>
                                                <bs:item href="#">Another action</bs:item>
                                            </jsp:body>
                                        </bs:item>
                                    </bs:nav>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;h2&gt;Tabs&lt;/h2&gt;<br>        &lt;bs:nav tabs="true" _style="margin-bottom: 15px;"&gt;<br>            &lt;bs:item tabId="home" active="true"&gt;Home&lt;/bs:item&gt;<br>            &lt;bs:item tabId="profile"&gt;Profile&lt;/bs:item&gt;<br>            &lt;bs:item href="javascript:;" disabled="true"&gt;Disabled&lt;/bs:item&gt;<br>            &lt;bs:item dropdown="true"&gt;<br>                &lt;jsp:attribute name="title"&gt;Dropdown &lt;bs:icon caret="true"/&gt;&lt;/jsp:attribute&gt;<br>                &lt;jsp:body&gt;<br>                    &lt;bs:item tabId="dropdown1"&gt;Action&lt;/bs:item&gt;<br>                    &lt;bs:item divider="true"/&gt;<br>                    &lt;bs:item tabId="dropdown2"&gt;Another action&lt;/bs:item&gt;<br>                &lt;/jsp:body&gt;<br>            &lt;/bs:item&gt;<br>        &lt;/bs:nav&gt;<br>        &lt;bs:tabs&gt;<br>            &lt;bs:panel _id="home" tabs="true" active="true"&gt;<br>                &lt;p&gt;Raw denim you probably haven't heard of them jean shorts Austin. ......&lt;/p&gt;<br>            &lt;/bs:panel&gt;<br>            &lt;bs:panel _id="profile" tabs="true"&gt;<br>                &lt;p&gt;Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. ......&lt;/p&gt;<br>            &lt;/bs:panel&gt;<br>            &lt;bs:panel _id="dropdown1" tabs="true"&gt;<br>                &lt;p&gt;Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. ......&lt;/p&gt;<br>            &lt;/bs:panel&gt;<br>            &lt;bs:panel _id="dropdown2" tabs="true"&gt;<br>                &lt;p&gt;Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. ......&lt;/p&gt;<br>            &lt;/bs:panel&gt;<br>        &lt;/bs:tabs&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;h2&gt;Pills&lt;/h2&gt;<br>        &lt;bs:nav pills="true"&gt;<br>            &lt;bs:item href="#" active="true"&gt;Home&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;Profile &lt;bs:badge&gt;12&lt;/bs:badge&gt;&lt;/bs:item&gt;<br>            &lt;bs:item href="#" disabled="true"&gt;Disabled&lt;/bs:item&gt;<br>            &lt;bs:item dropdown="true"&gt;<br>                &lt;jsp:attribute name="title"&gt;Dropdown &lt;bs:icon caret="true"/&gt;&lt;/jsp:attribute&gt;<br>                &lt;jsp:body&gt;<br>                    &lt;bs:item href="#"&gt;Action&lt;/bs:item&gt;<br>                    &lt;bs:item divider="true"/&gt;<br>                    &lt;bs:item href="#"&gt;Another action&lt;/bs:item&gt;<br>                &lt;/jsp:body&gt;<br>            &lt;/bs:item&gt;<br>        &lt;/bs:nav&gt;<br>        &lt;br&gt;<br>        &lt;bs:nav pills="true" stacked="true"&gt;<br>            &lt;bs:item href="#" active="true"&gt;Home&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;Profile &lt;bs:badge&gt;12&lt;/bs:badge&gt;&lt;/bs:item&gt;<br>            &lt;bs:item href="#" disabled="true"&gt;Disabled&lt;/bs:item&gt;<br>            &lt;bs:item dropdown="true"&gt;<br>                &lt;jsp:attribute name="title"&gt;Dropdown &lt;bs:icon caret="true"/&gt;&lt;/jsp:attribute&gt;<br>                &lt;jsp:body&gt;<br>                    &lt;bs:item href="#"&gt;Action&lt;/bs:item&gt;<br>                    &lt;bs:item divider="true"/&gt;<br>                    &lt;bs:item href="#"&gt;Another action&lt;/bs:item&gt;<br>                &lt;/jsp:body&gt;<br>            &lt;/bs:item&gt;<br>        &lt;/bs:nav&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </bs:docs-highlight>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="6">
                                    <h2>Pagination</h2>
                                    <bs:pagination>
                                        <bs:item href="#" disabled="true">&laquo;</bs:item>
                                        <bs:item href="#">1</bs:item>
                                        <bs:item href="#" active="true">2</bs:item>
                                        <bs:item href="#">3</bs:item>
                                        <bs:item href="#">4</bs:item>
                                        <bs:item href="#">5</bs:item>
                                        <bs:item href="#">&raquo;</bs:item>
                                    </bs:pagination>
                                    <bs:pagination large="true">
                                        <bs:item href="#" disabled="true">&laquo;</bs:item>
                                        <bs:item href="#">1</bs:item>
                                        <bs:item href="#" active="true">2</bs:item>
                                        <bs:item href="#">3</bs:item>
                                        <bs:item href="#">&raquo;</bs:item>
                                    </bs:pagination>
                                    <bs:pagination small="true">
                                        <bs:item href="#" disabled="true">&laquo;</bs:item>
                                        <bs:item href="#">1</bs:item>
                                        <bs:item href="#" active="true">2</bs:item>
                                        <bs:item href="#">3</bs:item>
                                        <bs:item href="#">4</bs:item>
                                        <bs:item href="#">5</bs:item>
                                        <bs:item href="#">&raquo;</bs:item>
                                    </bs:pagination>
                                </bs:col>
                                <bs:col md="6">
                                    <bs:row>
                                        <bs:col md="12">
                                            <h2>Pager</h2>
                                            <bs:pagination pager="true">
                                                <bs:item href="#">Previous</bs:item>
                                                <bs:item href="#">Next</bs:item>
                                            </bs:pagination>
                                            <bs:pagination pager="true">
                                                <bs:item href="#" previous="true" disabled="true">&larr; Older</bs:item>
                                                <bs:item href="#" next="true">Newer &rarr;</bs:item>
                                            </bs:pagination>
                                        </bs:col>
                                        <bs:col md="12">
                                            <h2>Breadcrumbs</h2>
                                            <bs:breadcrumb>
                                                <bs:item active="true"><bs:icon fa="true" style="home" faW="true">Home</bs:icon></bs:item>
                                                <bs:item href="#">Library</bs:item>
                                                <bs:item>Data</bs:item>
                                            </bs:breadcrumb>
                                        </bs:col>
                                    </bs:row>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;h2&gt;Pagination&lt;/h2&gt;<br>        &lt;bs:pagination&gt;<br>            &lt;bs:item href="#" disabled="true"&gt;&amp;laquo;&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;1&lt;/bs:item&gt;<br>            &lt;bs:item href="#" active="true"&gt;2&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;3&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;4&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;5&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;&amp;raquo;&lt;/bs:item&gt;<br>        &lt;/bs:pagination&gt;<br>        &lt;bs:pagination large="true"&gt;<br>            &lt;bs:item href="#" disabled="true"&gt;&amp;laquo;&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;1&lt;/bs:item&gt;<br>            &lt;bs:item href="#" active="true"&gt;2&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;3&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;&amp;raquo;&lt;/bs:item&gt;<br>        &lt;/bs:pagination&gt;<br>        &lt;bs:pagination small="true"&gt;<br>            &lt;bs:item href="#" disabled="true"&gt;&amp;laquo;&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;1&lt;/bs:item&gt;<br>            &lt;bs:item href="#" active="true"&gt;2&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;3&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;4&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;5&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;&amp;raquo;&lt;/bs:item&gt;<br>        &lt;/bs:pagination&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md="12"&gt;<br>                &lt;h2&gt;Pager&lt;/h2&gt;<br>                &lt;bs:pagination pager="true"&gt;<br>                    &lt;bs:item href="#"&gt;Previous&lt;/bs:item&gt;<br>                    &lt;bs:item href="#"&gt;Next&lt;/bs:item&gt;<br>                &lt;/bs:pagination&gt;<br>                &lt;bs:pagination pager="true"&gt;<br>                    &lt;bs:item href="#" previous="true" disabled="true"&gt;&amp;larr; Older&lt;/bs:item&gt;<br>                    &lt;bs:item href="#" next="true"&gt;Newer &amp;rarr;&lt;/bs:item&gt;<br>                &lt;/bs:pagination&gt;<br>            &lt;/bs:col&gt;<br>            &lt;bs:col md="12"&gt;<br>                &lt;h2&gt;Breadcrumbs&lt;/h2&gt;<br>                &lt;bs:breadcrumb&gt;<br>                    &lt;bs:item active="true"&gt;&lt;bs:icon fa="true" style="home" faW="true"&gt;Home&lt;/bs:icon&gt;&lt;/bs:item&gt;<br>                    &lt;bs:item href="#"&gt;Library&lt;/bs:item&gt;<br>                    &lt;bs:item&gt;Data&lt;/bs:item&gt;<br>                &lt;/bs:breadcrumb&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </bs:docs-highlight>
                    </bs:docs-section>
                    <!-- Docs: Indicators-->
                    <bs:docs-section>
                        <bs:docs-section-header>Indicators</bs:docs-section-header>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="12">
                                    <h2>Alerts</h2>
                                    <bs:alert style="warning" dismissable="true">
                                        <h4>Warning!</h4>
                                        <p>Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <bs:alert-link href="#" target="_blank">vel scelerisque nisl consectetur et</bs:alert-link>.</p>
                                    </bs:alert>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="4">
                                    <bs:alert style="danger" dismissable="true">
                                        <strong>Oh snap!</strong>
                                        <bs:alert-link href="#">Change a few things up</bs:alert-link> and try submitting again.
                                    </bs:alert>
                                </bs:col>
                                <bs:col md="4">
                                    <bs:alert style="success" dismissable="true">
                                        <strong>Well done!</strong>
                                        You successfully read <bs:alert-link href="#">this important alert message</bs:alert-link>.
                                    </bs:alert>
                                </bs:col>
                                <bs:col md="4">
                                    <bs:alert style="info" dismissable="true">
                                        <strong>Heads up!</strong>
                                        This <bs:alert-link href="#">alert needs your attention</bs:alert-link>, but it's not super important.
                                    </bs:alert>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="6">
                                    <h2>Labels</h2>
                                    <bs:label style="default">Default</bs:label>
                                    <bs:label style="primary">Primary</bs:label>
                                    <bs:label style="success">Success</bs:label>
                                    <bs:label style="warning">Warning</bs:label>
                                    <bs:label style="danger">Danger</bs:label>
                                    <bs:label style="info">Info</bs:label>
                                </bs:col>
                                <bs:col md="6">
                                    <h2>Badges</h2>
                                    <bs:nav pills="true">
                                        <bs:item href="#" active="true">Home <bs:badge>12</bs:badge></bs:item>
                                        <bs:item href="#">Profile</bs:item>
                                        <bs:item href="#">Message <bs:badge>3</bs:badge></bs:item>
                                    </bs:nav>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md="12"&gt;<br>        &lt;h2&gt;Alerts&lt;/h2&gt;<br>        &lt;bs:alert style="warning" dismissable="true"&gt;<br>            &lt;h4&gt;Warning!&lt;/h4&gt;<br>            &lt;p&gt;Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, &lt;bs:alert-link href="#" target="_blank"&gt;vel scelerisque nisl consectetur et&lt;/bs:alert-link&gt;.&lt;/p&gt;<br>        &lt;/bs:alert&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="4"&gt;<br>        &lt;bs:alert style="danger" dismissable="true"&gt;<br>            &lt;strong&gt;Oh snap!&lt;/strong&gt;<br>            &lt;bs:alert-link href="#"&gt;Change a few things up&lt;/bs:alert-link&gt; and try submitting again.<br>        &lt;/bs:alert&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="4"&gt;<br>        &lt;bs:alert style="success" dismissable="true"&gt;<br>            &lt;strong&gt;Well done!&lt;/strong&gt;<br>            You successfully read &lt;bs:alert-link href="#"&gt;this important alert message&lt;/bs:alert-link&gt;.<br>        &lt;/bs:alert&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="4"&gt;<br>        &lt;bs:alert style="info" dismissable="true"&gt;<br>            &lt;strong&gt;Heads up!&lt;/strong&gt;<br>            This &lt;bs:alert-link href="#"&gt;alert needs your attention&lt;/bs:alert-link&gt;, but it's not super important.<br>        &lt;/bs:alert&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;h2&gt;Labels&lt;/h2&gt;<br>        &lt;bs:label style="default"&gt;Default&lt;/bs:label&gt;<br>        &lt;bs:label style="primary"&gt;Primary&lt;/bs:label&gt;<br>        &lt;bs:label style="success"&gt;Success&lt;/bs:label&gt;<br>        &lt;bs:label style="warning"&gt;Warning&lt;/bs:label&gt;<br>        &lt;bs:label style="danger"&gt;Danger&lt;/bs:label&gt;<br>        &lt;bs:label style="info"&gt;Info&lt;/bs:label&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;h2&gt;Badges&lt;/h2&gt;<br>        &lt;bs:nav pills="true"&gt;<br>            &lt;bs:item href="#" active="true"&gt;Home &lt;bs:badge&gt;12&lt;/bs:badge&gt;&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;Profile&lt;/bs:item&gt;<br>            &lt;bs:item href="#"&gt;Message &lt;bs:badge&gt;3&lt;/bs:badge&gt;&lt;/bs:item&gt;<br>        &lt;/bs:nav&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </bs:docs-highlight>
                    </bs:docs-section>
                    <!-- Docs: Progress bars-->
                    <bs:docs-section>
                        <bs:docs-section-header>Progress bars</bs:docs-section-header>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="12">
                                    <h3>Basic</h3>
                                    <bs:progress><bs:progress-bar value="60"/></bs:progress>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="12">
                                    <h3>Contextual alternatives</h3>
                                    <bs:progress><bs:progress-bar style="info" value="20"/></bs:progress>
                                    <bs:progress><bs:progress-bar style="success" value="40"/></bs:progress>
                                    <bs:progress><bs:progress-bar style="warning" value="60"/></bs:progress>
                                    <bs:progress><bs:progress-bar style="danger" value="80"/></bs:progress>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="12">
                                    <h3>Striped</h3>
                                    <bs:progress striped="true"><bs:progress-bar style="info" value="20"/></bs:progress>
                                    <bs:progress striped="true"><bs:progress-bar style="success" value="40"/></bs:progress>
                                    <bs:progress striped="true"><bs:progress-bar style="warning" value="60"/></bs:progress>
                                    <bs:progress striped="true"><bs:progress-bar style="danger" value="80"/></bs:progress>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="12">
                                    <h3>Animated</h3>
                                    <bs:progress striped="true" active="true"><bs:progress-bar value="45"/></bs:progress>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="12">
                                    <h3>Stacked</h3>
                                    <bs:progress>
                                        <bs:progress-bar style="success" value="35"/>
                                        <bs:progress-bar style="warning" value="20"/>
                                        <bs:progress-bar style="danger" value="10"/>
                                    </bs:progress>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md="12"&gt;<br>        &lt;h3&gt;Basic&lt;/h3&gt;<br>        &lt;bs:progress&gt;&lt;bs:progress-bar value="60"/&gt;&lt;/bs:progress&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="12"&gt;<br>        &lt;h3&gt;Contextual alternatives&lt;/h3&gt;<br>        &lt;bs:progress&gt;&lt;bs:progress-bar style="info" value="20"/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress&gt;&lt;bs:progress-bar style="success" value="40"/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress&gt;&lt;bs:progress-bar style="warning" value="60"/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress&gt;&lt;bs:progress-bar style="danger" value="80"/&gt;&lt;/bs:progress&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="12"&gt;<br>        &lt;h3&gt;Striped&lt;/h3&gt;<br>        &lt;bs:progress striped="true"&gt;&lt;bs:progress-bar style="info" value="20"/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress striped="true"&gt;&lt;bs:progress-bar style="success" value="40"/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress striped="true"&gt;&lt;bs:progress-bar style="warning" value="60"/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress striped="true"&gt;&lt;bs:progress-bar style="danger" value="80"/&gt;&lt;/bs:progress&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="12"&gt;<br>        &lt;h3&gt;Animated&lt;/h3&gt;<br>        &lt;bs:progress striped="true" active="true"&gt;&lt;bs:progress-bar value="45"/&gt;&lt;/bs:progress&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="12"&gt;<br>        &lt;h3&gt;Stacked&lt;/h3&gt;<br>        &lt;bs:progress&gt;<br>            &lt;bs:progress-bar style="success" value="35"/&gt;<br>            &lt;bs:progress-bar style="warning" value="20"/&gt;<br>            &lt;bs:progress-bar style="danger" value="10"/&gt;<br>        &lt;/bs:progress&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </bs:docs-highlight>
                    </bs:docs-section>
                    <!-- Docs: Containers-->
                    <bs:docs-section>
                        <bs:docs-section-header>Containers</bs:docs-section-header>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="12">
                                    <bs:jumbotron>
                                        <h1>Jumbotron</h1>
                                        <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                                        <bs:button style="primary" large="true">Learn more</bs:button>
                                    </bs:jumbotron>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="12">
                                    <h2>List groups</h2>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="6">
                                    <bs:row>
                                        <bs:col md="12">
                                            <bs:list-group>
                                                <bs:list-item>Cras justo odio <bs:badge>14</bs:badge></bs:list-item>
                                                <bs:list-item>Dapibus ac facilisis in <bs:badge>2</bs:badge></bs:list-item>
                                                <bs:list-item>Morbi leo risus <bs:badge>1</bs:badge></bs:list-item>
                                            </bs:list-group>
                                        </bs:col>
                                    </bs:row>
                                    <bs:row>
                                        <bs:col md="12">
                                            <bs:list-group link="true">
                                                <bs:list-item href="#" link="true" active="true">Cras justo odio <bs:badge>14</bs:badge></bs:list-item>
                                                <bs:list-item href="#" link="true">Dapibus ac facilisis in <bs:badge>2</bs:badge></bs:list-item>
                                                <bs:list-item href="#" link="true">Morbi leo risus <bs:badge>1</bs:badge></bs:list-item>
                                            </bs:list-group>
                                        </bs:col>
                                    </bs:row>
                                </bs:col>
                                <bs:col md="6">
                                    <bs:list-group link="true">
                                        <bs:list-item href="#" link="true" active="true" heading="List group item heading">
                                            Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.
                                        </bs:list-item>
                                        <bs:list-item href="#" link="true" heading="List group item heading">
                                            Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.
                                        </bs:list-item>
                                        <bs:list-item href="#" link="true" heading="List group item heading">
                                            Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.
                                        </bs:list-item>
                                    </bs:list-group>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md="12"&gt;<br>        &lt;bs:jumbotron&gt;<br>            &lt;h1&gt;Jumbotron&lt;/h1&gt;<br>            &lt;p&gt;This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.&lt;/p&gt;<br>            &lt;bs:button style="primary" large="true"&gt;Learn more&lt;/bs:button&gt;<br>        &lt;/bs:jumbotron&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="12"&gt;<br>        &lt;h2&gt;List groups&lt;/h2&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md="12"&gt;<br>                &lt;bs:list-group&gt;<br>                    &lt;bs:list-item&gt;Cras justo odio &lt;bs:badge&gt;14&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                    &lt;bs:list-item&gt;Dapibus ac facilisis in &lt;bs:badge&gt;2&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                    &lt;bs:list-item&gt;Morbi leo risus &lt;bs:badge&gt;1&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                &lt;/bs:list-group&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md="12"&gt;<br>                &lt;bs:list-group link="true"&gt;<br>                    &lt;bs:list-item href="#" link="true" active="true"&gt;Cras justo odio &lt;bs:badge&gt;14&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                    &lt;bs:list-item href="#" link="true"&gt;Dapibus ac facilisis in &lt;bs:badge&gt;2&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                    &lt;bs:list-item href="#" link="true"&gt;Morbi leo risus &lt;bs:badge&gt;1&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                &lt;/bs:list-group&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;bs:list-group link="true"&gt;<br>            &lt;bs:list-item href="#" link="true" active="true" heading="List group item heading"&gt;<br>                Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.<br>            &lt;/bs:list-item&gt;<br>            &lt;bs:list-item href="#" link="true" heading="List group item heading"&gt;<br>                Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.<br>            &lt;/bs:list-item&gt;<br>            &lt;bs:list-item href="#" link="true" heading="List group item heading"&gt;<br>                Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.<br>            &lt;/bs:list-item&gt;<br>        &lt;/bs:list-group&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </bs:docs-highlight>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="12">
                                    <h2>Panels</h2>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="6">
                                    <bs:panel>Basic panel</bs:panel>
                                    <bs:panel title="Panel heading">Panel content</bs:panel>
                                    <bs:panel title="Panel heading" footer="Pannel footer">Panel content</bs:panel>
                                    <bs:panel style="primary" title="Panel primary">Panel content</bs:panel>
                                </bs:col>
                                <bs:col md="6">
                                    <bs:panel style="success" title="Panel success">Panel content</bs:panel>
                                    <bs:panel style="warning" title="Panel warning">Panel content</bs:panel>
                                    <bs:panel style="info" title="Panel info">Panel content</bs:panel>
                                    <bs:panel style="danger" title="Panel danger">Panel content</bs:panel>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="12">
                                    <h2>Wells</h2>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="4">
                                    <bs:well>Look, I'm in a well!</bs:well>
                                </bs:col>
                                <bs:col md="4">
                                    <bs:well small="true">Look, I'm in a small well!</bs:well>
                                </bs:col>
                                <bs:col md="4">
                                    <bs:well large="true">Look, I'm in a large well!</bs:well>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md="12"&gt;<br>        &lt;h2&gt;Panels&lt;/h2&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;bs:panel&gt;Basic panel&lt;/bs:panel&gt;<br>        &lt;bs:panel title="Panel heading"&gt;Panel content&lt;/bs:panel&gt;<br>        &lt;bs:panel title="Panel heading" footer="Pannel footer"&gt;Panel content&lt;/bs:panel&gt;<br>        &lt;bs:panel style="primary" title="Panel primary"&gt;Panel content&lt;/bs:panel&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;bs:panel style="success" title="Panel success"&gt;Panel content&lt;/bs:panel&gt;<br>        &lt;bs:panel style="warning" title="Panel warning"&gt;Panel content&lt;/bs:panel&gt;<br>        &lt;bs:panel style="info" title="Panel info"&gt;Panel content&lt;/bs:panel&gt;<br>        &lt;bs:panel style="danger" title="Panel danger"&gt;Panel content&lt;/bs:panel&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="12"&gt;<br>        &lt;h2&gt;Wells&lt;/h2&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md="4"&gt;<br>        &lt;bs:well&gt;Look, I'm in a well!&lt;/bs:well&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="4"&gt;<br>        &lt;bs:well small="true"&gt;Look, I'm in a small well!&lt;/bs:well&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="4"&gt;<br>        &lt;bs:well large="true"&gt;Look, I'm in a large well!&lt;/bs:well&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </bs:docs-highlight>
                    </bs:docs-section>
                    <!-- Docs: Dialogs-->
                    <bs:docs-section>
                        <bs:docs-section-header>Dialogs</bs:docs-section-header>
                        <bs:docs-example>
                            <bs:row>
                                <bs:col md="6">
                                    <h2>Modals</h2>
                                    <bs:button style="primary" large="true" modalId="modalDemo">Show Modal</bs:button>
                                    <bs:modal _id="modalDemo" title="Modal title" fade="true" _attrs="aria-hidden=\"false\"">
                                        <jsp:attribute name="footer">
                                            <bs:button style="primary">Save changes</bs:button>
                                            <bs:button style="default" _attrs="data-dismiss=\"modal\"">Close</bs:button>
                                        </jsp:attribute>
                                        <jsp:body>
                                            One fine body...
                                        </jsp:body>
                                    </bs:modal>
                                </bs:col>
                                <bs:col md="6">
                                    <bs:row>
                                        <bs:col md="12">
                                            <h2>Popovers</h2>
                                            <bs:button style="default" popover="Popover on left." placement="left">Left</bs:button>
                                            <bs:button style="default" popover="Popover on top." placement="top">Top</bs:button>
                                            <bs:button style="default" popover="Popover on bottom." placement="bottom">Bottom</bs:button>
                                            <bs:button style="default" popover="Popover on right." placement="right">Right</bs:button>
                                        </bs:col>
                                    </bs:row>
                                    <bs:row>
                                        <bs:col md="12">
                                            <h2>Tooltips</h2>
                                            <bs:button style="default" tip="Tooltip on left." placement="left">Left</bs:button>
                                            <bs:button style="default" tip="Tooltip on top." placement="top">Top</bs:button>
                                            <bs:button style="default" tip="Tooltip on bottom." placement="bottom">Bottom</bs:button>
                                            <bs:button style="default" tip="Tooltip on right." placement="right">Right</bs:button>
                                        </bs:col>
                                    </bs:row>
                                </bs:col>
                            </bs:row>
                        </bs:docs-example>
                        <bs:docs-highlight>
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;h2&gt;Modals&lt;/h2&gt;<br>        &lt;bs:button style="primary" large="true" modalId="modalDemo"&gt;Show Modal&lt;/bs:button&gt;<br>        &lt;bs:modal _id="modalDemo" title="Modal title" fade="true" _attrs="aria-hidden=\"false\""&gt;<br>            &lt;jsp:attribute name="footer"&gt;<br>                &lt;bs:button style="primary"&gt;Save changes&lt;/bs:button&gt;<br>                &lt;bs:button style="default" _attrs="data-dismiss=\"modal\""&gt;Close&lt;/bs:button&gt;<br>            &lt;/jsp:attribute&gt;<br>            &lt;jsp:body&gt;<br>                One fine body...<br>            &lt;/jsp:body&gt;<br>        &lt;/bs:modal&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md="6"&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md="12"&gt;<br>                &lt;h2&gt;Popovers&lt;/h2&gt;<br>                &lt;bs:button style="default" popover="Popover on left." placement="left"&gt;Left&lt;/bs:button&gt;<br>                &lt;bs:button style="default" popover="Popover on top." placement="top"&gt;Top&lt;/bs:button&gt;<br>                &lt;bs:button style="default" popover="Popover on bottom." placement="bottom"&gt;Bottom&lt;/bs:button&gt;<br>                &lt;bs:button style="default" popover="Popover on right." placement="right"&gt;Right&lt;/bs:button&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md="12"&gt;<br>                &lt;h2&gt;Tooltips&lt;/h2&gt;<br>                &lt;bs:button style="default" tip="Tooltip on left." placement="left"&gt;Left&lt;/bs:button&gt;<br>                &lt;bs:button style="default" tip="Tooltip on top." placement="top"&gt;Top&lt;/bs:button&gt;<br>                &lt;bs:button style="default" tip="Tooltip on bottom." placement="bottom"&gt;Bottom&lt;/bs:button&gt;<br>                &lt;bs:button style="default" tip="Tooltip on right." placement="right"&gt;Right&lt;/bs:button&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </bs:docs-highlight>
                    </bs:docs-section>
                </bs:col>
                <bs:col md="3">
                    <bs:docs-sidebar>
                        <bs:docs-sidenav>
                            <bs:item href="#navbar">Navbar</bs:item>
                            <bs:item href="#buttons">Buttons</bs:item>
                            <bs:item href="#typography">Typography</bs:item>
                            <bs:item href="#tables">Tables</bs:item>
                            <bs:item href="#forms">Forms</bs:item>
                            <bs:item href="#navs">Navs</bs:item>
                            <bs:item href="#indicators">Indicators</bs:item>
                            <bs:item href="#progress-bars">Progress bars</bs:item>
                            <bs:item href="#containers">Containers</bs:item>
                            <bs:item href="#dialogs">Dialogs</bs:item>
                        </bs:docs-sidenav>
                    </bs:docs-sidebar>
                </bs:col>
            </bs:row>
        </bs:docs-container>
        <bs:docs-footer container="true">
            <bs:docs-footer-links>
                <bs:item href="https://github.com/suninformaiton/ymate-platform-v2">YMP</bs:item>
                <bs:item href="https://github.com/suninformaiton/ymate-framework-v2">Framework</bs:item>
                <bs:item href="https://github.com/suninformaiton/ymate-webui">WebUI</bs:item>
            </bs:docs-footer-links>
            <bs:text justified="true">Copyright &copy; 2016 yMate.Net</bs:text>
        </bs:docs-footer>
    </ymweb:layout>
</ymweb:ui>