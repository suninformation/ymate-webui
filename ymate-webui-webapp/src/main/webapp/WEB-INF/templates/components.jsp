<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="false" %>
<%@ taglib uri="http://www.ymate.net/ymweb_core" prefix="ymweb" %>
<%@ taglib uri="http://www.ymate.net/ymweb_bs" prefix="bs" %>
<ymweb:ui src="webui/_bootstrap">
    <ymweb:property name="title">WebUI | YMP - yMate.Net</ymweb:property>
    <ymweb:css href="assets/styles/doc.min.css" type="text/css"/>
    <ymweb:css href="assets/styles/patch.css" type="text/css"/>
    <ymweb:script src="assets/scripts/doc.min.js"/>
    <ymweb:script>
        <script>
            $(function () {
                $('[data-tip="tooltip"]').tooltip();
                $('[data-popover="popover"]').popover();
            });
        </script>
    </ymweb:script>
    <ymweb:layout>
        <!-- NavBar -->
        <bs:navbar _class="bs-docs-nav" staticTop="false" container="true" collapseId="main">
            <jsp:attribute name="brand">WebUI</jsp:attribute>
            <jsp:body>
                <bs:nav>
                    <bs:item href="#">Getting Started</bs:item>
                    <bs:item href="#" active="true">Components</bs:item>
                    <bs:item href="#">Plugins</bs:item>
                    <bs:item href="#">Tags</bs:item>
                </bs:nav>
                <bs:nav right="true">
                    <bs:item href="https://github.com/suninformation/ymate-webui"><bs:icon fa="true" style="github" faW="true">GitHub</bs:icon></bs:item>
                </bs:nav>
            </jsp:body>
        </bs:navbar>
        <!-- Header -->
        <div class="bs-docs-header">
            <bs:container>
                <bs:row>
                    <bs:col md="12">
                        <h1>WebUI</h1>
                        <bs:text lead="true">A JSP taglib for Bootstrap3.</bs:text>
                    </bs:col>
                </bs:row>
            </bs:container>
        </div>
        <!-- Container -->
        <bs:container _class="bs-doc-container">
            <bs:row>
                <bs:col md="9">
                    <!-- Docs: NavBar -->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Navbar</bs:header>
                        <div class="bs-example">
                            <bs:navbar container="true" brand="Brand" collapseId="example1">
                                <bs:nav>
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
                                <bs:form left="true">
                                    <bs:input-group>
                                        <bs:form-control type="text" placeholder="Search"/>
                                        <bs:input-group addon="true" btn="true">
                                            <bs:button type="submit" style="default">Submit</bs:button>
                                        </bs:input-group>
                                    </bs:input-group>
                                </bs:form>
                                <bs:nav right="true">
                                    <bs:item href="#">Link</bs:item>
                                </bs:nav>
                            </bs:navbar>
                            <bs:navbar container="true" brand="Brand" inverse="true" collapseId="example2">
                                <bs:nav>
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
                                <bs:form left="true">
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:navbar container=&quot;true&quot; brand=&quot;Brand&quot; collapseId=&quot;example1&quot;&gt;<br>    &lt;bs:nav&gt;<br>        &lt;bs:item href=&quot;#&quot; active=&quot;true&quot;&gt;Link&lt;/bs:item&gt;<br>        &lt;bs:item href=&quot;#&quot;&gt;Link&lt;/bs:item&gt;<br>        &lt;bs:item dropdown=&quot;true&quot;&gt;<br>            &lt;jsp:attribute name=&quot;title&quot;&gt;Dropdown &lt;bs:icon caret=&quot;true&quot;/&gt;&lt;/jsp:attribute&gt;<br>            &lt;jsp:body&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider=&quot;true&quot;/&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Separated link&lt;/bs:item&gt;<br>                &lt;bs:item divider=&quot;true&quot;/&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;One more separated link&lt;/bs:item&gt;<br>            &lt;/jsp:body&gt;<br>        &lt;/bs:item&gt;<br>    &lt;/bs:nav&gt;<br>    &lt;bs:form left=&quot;true&quot;&gt;<br>        &lt;bs:input-group&gt;<br>            &lt;bs:form-control type=&quot;text&quot; placeholder=&quot;Search&quot;/&gt;<br>            &lt;bs:input-group addon=&quot;true&quot; btn=&quot;true&quot;&gt;<br>                &lt;bs:button type=&quot;submit&quot; style=&quot;default&quot;&gt;Submit&lt;/bs:button&gt;<br>            &lt;/bs:input-group&gt;<br>        &lt;/bs:input-group&gt;<br>    &lt;/bs:form&gt;<br>    &lt;bs:nav right=&quot;true&quot;&gt;<br>        &lt;bs:item href=&quot;#&quot;&gt;Link&lt;/bs:item&gt;<br>    &lt;/bs:nav&gt;<br>&lt;/bs:navbar&gt;</pre>
                            <pre>&lt;bs:navbar container=&quot;true&quot; brand=&quot;Brand&quot; inverse=&quot;true&quot; collapseId=&quot;example2&quot;&gt;<br>    &lt;bs:nav&gt;<br>        &lt;bs:item href=&quot;#&quot; active=&quot;true&quot;&gt;Link&lt;/bs:item&gt;<br>        &lt;bs:item href=&quot;#&quot;&gt;Link&lt;/bs:item&gt;<br>        &lt;bs:item dropdown=&quot;true&quot;&gt;<br>            &lt;jsp:attribute name=&quot;title&quot;&gt;Dropdown &lt;bs:icon caret=&quot;true&quot;/&gt;&lt;/jsp:attribute&gt;<br>            &lt;jsp:body&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider=&quot;true&quot;/&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Separated link&lt;/bs:item&gt;<br>                &lt;bs:item divider=&quot;true&quot;/&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;One more separated link&lt;/bs:item&gt;<br>            &lt;/jsp:body&gt;<br>        &lt;/bs:item&gt;<br>    &lt;/bs:nav&gt;<br>    &lt;bs:form left=&quot;true&quot;&gt;<br>        &lt;bs:input-group&gt;<br>            &lt;bs:form-control type=&quot;text&quot; placeholder=&quot;Search&quot;/&gt;<br>            &lt;bs:input-group addon=&quot;true&quot; btn=&quot;true&quot;&gt;<br>                &lt;bs:button type=&quot;submit&quot; style=&quot;default&quot;&gt;Submit&lt;/bs:button&gt;<br>            &lt;/bs:input-group&gt;<br>        &lt;/bs:input-group&gt;<br>    &lt;/bs:form&gt;<br>    &lt;bs:nav navbar=&quot;true&quot; right=&quot;true&quot;&gt;<br>        &lt;bs:item href=&quot;#&quot;&gt;Link&lt;/bs:item&gt;<br>    &lt;/bs:nav&gt;<br>&lt;/bs:navbar&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Buttons -->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Buttons</bs:header>
                        <div class="bs-example">
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
                                                <bs:button style="success" dropdown="true"><bs:icon
                                                        caret="true"/></bs:button>
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
                                            <bs:button style="default" href="#">Left</bs:button>
                                            <bs:button style="default" href="#">Middle</bs:button>
                                            <bs:button style="default" href="#">Right</bs:button>
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;p&gt;<br>    &lt;bs:button style=&quot;default&quot;&gt;Default&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;primary&quot;&gt;Primary&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;success&quot;&gt;Success&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;info&quot;&gt;Info&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;warning&quot;&gt;Warning&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;danger&quot;&gt;Danger&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;link&quot;&gt;Link&lt;/bs:button&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button style=&quot;default&quot; disabled=&quot;true&quot;&gt;Default&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;primary&quot; disabled=&quot;true&quot;&gt;Primary&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;success&quot; disabled=&quot;true&quot;&gt;Success&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;info&quot; disabled=&quot;true&quot;&gt;Info&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;warning&quot; disabled=&quot;true&quot;&gt;Warning&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;danger&quot; disabled=&quot;true&quot;&gt;Danger&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;link&quot; disabled=&quot;true&quot;&gt;Link&lt;/bs:button&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button style=&quot;primary&quot; large=&quot;true&quot;&gt;Large button&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;primary&quot;&gt;Default button&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;primary&quot; small=&quot;true&quot;&gt;Small button&lt;/bs:button&gt;<br>    &lt;bs:button style=&quot;primary&quot; mini=&quot;true&quot;&gt;Mini button&lt;/bs:button&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button-group toolbar=&quot;true&quot;&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style=&quot;default&quot;&gt;Default&lt;/bs:button&gt;<br>            &lt;bs:button style=&quot;default&quot; dropdown=&quot;true&quot;&gt;&lt;bs:icon caret=&quot;true&quot;/&gt;&lt;/bs:button&gt;<br>            &lt;bs:dropdown-menu&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider=&quot;true&quot;/&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Separated link&lt;/bs:item&gt;<br>            &lt;/bs:dropdown-menu&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style=&quot;primary&quot;&gt;Primary&lt;/bs:button&gt;<br>            &lt;bs:button style=&quot;primary&quot; dropdown=&quot;true&quot;&gt;&lt;bs:icon caret=&quot;true&quot;/&gt;&lt;/bs:button&gt;<br>            &lt;bs:dropdown-menu&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider=&quot;true&quot;/&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Separated link&lt;/bs:item&gt;<br>            &lt;/bs:dropdown-menu&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style=&quot;success&quot;&gt;Success&lt;/bs:button&gt;<br>            &lt;bs:button style=&quot;success&quot; dropdown=&quot;true&quot;&gt;&lt;bs:icon<br>                    caret=&quot;true&quot;/&gt;&lt;/bs:button&gt;<br>            &lt;bs:dropdown-menu&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider=&quot;true&quot;/&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Separated link&lt;/bs:item&gt;<br>            &lt;/bs:dropdown-menu&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style=&quot;warning&quot;&gt;Warning&lt;/bs:button&gt;<br>            &lt;bs:button style=&quot;warning&quot; dropdown=&quot;true&quot;&gt;&lt;bs:icon caret=&quot;true&quot;/&gt;&lt;/bs:button&gt;<br>            &lt;bs:dropdown-menu&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider=&quot;true&quot;/&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Separated link&lt;/bs:item&gt;<br>            &lt;/bs:dropdown-menu&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style=&quot;info&quot;&gt;Info&lt;/bs:button&gt;<br>            &lt;bs:button style=&quot;info&quot; dropdown=&quot;true&quot;&gt;&lt;bs:icon caret=&quot;true&quot;/&gt;&lt;/bs:button&gt;<br>            &lt;bs:dropdown-menu&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Another action&lt;/bs:item&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Something else here&lt;/bs:item&gt;<br>                &lt;bs:item divider=&quot;true&quot;/&gt;<br>                &lt;bs:item href=&quot;#&quot;&gt;Separated link&lt;/bs:item&gt;<br>            &lt;/bs:dropdown-menu&gt;<br>        &lt;/bs:button-group&gt;<br>    &lt;/bs:button-group&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button style=&quot;default&quot; block=&quot;true&quot;&gt;Block level button&lt;/bs:button&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button-group justified=&quot;true&quot;&gt;<br>        &lt;bs:button style=&quot;default&quot; href=&quot;#&quot;&gt;Left&lt;/bs:button&gt;<br>        &lt;bs:button style=&quot;default&quot; href=&quot;#&quot;&gt;Middle&lt;/bs:button&gt;<br>        &lt;bs:button style=&quot;default&quot; href=&quot;#&quot;&gt;Right&lt;/bs:button&gt;<br>    &lt;/bs:button-group&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button-group toolbar=&quot;true&quot;&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style=&quot;default&quot;&gt;1&lt;/bs:button&gt;<br>            &lt;bs:button style=&quot;default&quot;&gt;2&lt;/bs:button&gt;<br>            &lt;bs:button style=&quot;default&quot;&gt;3&lt;/bs:button&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style=&quot;default&quot; link=&quot;true&quot;&gt;4&lt;/bs:button&gt;<br>            &lt;bs:button style=&quot;default&quot; link=&quot;true&quot;&gt;5&lt;/bs:button&gt;<br>            &lt;bs:button style=&quot;default&quot; link=&quot;true&quot;&gt;6&lt;/bs:button&gt;<br>        &lt;/bs:button-group&gt;<br>        &lt;bs:button-group&gt;<br>            &lt;bs:button style=&quot;default&quot;&gt;7&lt;/bs:button&gt;<br>            &lt;bs:button-group&gt;<br>                &lt;bs:button style=&quot;default&quot; dropdown=&quot;true&quot;&gt;Dropdown &lt;bs:icon caret=&quot;true&quot;/&gt;&lt;/bs:button&gt;<br>                &lt;bs:dropdown-menu&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Action&lt;/bs:item&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Another action&lt;/bs:item&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Something else here&lt;/bs:item&gt;<br>                    &lt;bs:item divider=&quot;true&quot;/&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Separated link&lt;/bs:item&gt;<br>                &lt;/bs:dropdown-menu&gt;<br>            &lt;/bs:button-group&gt;<br>        &lt;/bs:button-group&gt;<br>    &lt;/bs:button-group&gt;<br>&lt;/p&gt;<br>&lt;p&gt;<br>    &lt;bs:button-group vertical=&quot;true&quot;&gt;<br>        &lt;bs:button style=&quot;default&quot;&gt;Button&lt;/bs:button&gt;<br>        &lt;bs:button style=&quot;default&quot;&gt;Button&lt;/bs:button&gt;<br>        &lt;bs:button style=&quot;default&quot;&gt;Button&lt;/bs:button&gt;<br>    &lt;/bs:button-group&gt;<br>&lt;/p&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Typography -->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Typography</bs:header>
                        <div class="bs-example">
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
                                    <p>Nullam quis risus eget <a href="#">urna mollis ornare</a> vel eu leo. Cum sociis
                                        natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                                        Nullam id dolor id nibh ultricies vehicula.</p>
                                    <p>
                                        <small>This line of text is meant to be treated as fine print.</small>
                                    </p>
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
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer
                                                    posuere erat a ante.</p>
                                                <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                                            </bs:blockquote>
                                        </bs:col>
                                        <bs:col md="12">
                                            <bs:blockquote reverse="true">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer
                                                    posuere erat a ante.</p>
                                                <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                                            </bs:blockquote>
                                        </bs:col>
                                    </bs:row>
                                </bs:col>
                            </bs:row>
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;h1&gt;Heading 1&lt;/h1&gt;<br>        &lt;h2&gt;Heading 2&lt;/h2&gt;<br>        &lt;h3&gt;Heading 3&lt;/h3&gt;<br>        &lt;h4&gt;Heading 4&lt;/h4&gt;<br>        &lt;h5&gt;Heading 5&lt;/h5&gt;<br>        &lt;h6&gt;Heading 6&lt;/h6&gt;<br>        &lt;bs:text lead=&quot;true&quot;&gt;Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.&lt;/bs:text&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;h2&gt;Example body text&lt;/h2&gt;<br>        &lt;p&gt;Nullam quis risus eget &lt;a href=&quot;#&quot;&gt;urna mollis ornare&lt;/a&gt; vel eu leo. Cum sociis<br>            natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.<br>            Nullam id dolor id nibh ultricies vehicula.&lt;/p&gt;<br>        &lt;p&gt;<br>            &lt;small&gt;This line of text is meant to be treated as fine print.&lt;/small&gt;<br>        &lt;/p&gt;<br>        &lt;p&gt;The following snippet of text is &lt;strong&gt;rendered as bold text&lt;/strong&gt;.&lt;/p&gt;<br>        &lt;p&gt;The following snippet of text is &lt;em&gt;rendered as italicized text&lt;/em&gt;.&lt;/p&gt;<br>        &lt;p&gt;An abbreviation of the word attribute is &lt;abbr title=&quot;attribute&quot;&gt;attr&lt;/abbr&gt;.&lt;/p&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;h2&gt;Emphasis classes&lt;/h2&gt;<br>        &lt;bs:text style=&quot;muted&quot;&gt;Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.&lt;/bs:text&gt;<br>        &lt;bs:text style=&quot;primary&quot;&gt;Nullam id dolor id nibh ultricies vehicula ut id elit.&lt;/bs:text&gt;<br>        &lt;bs:text style=&quot;warning&quot;&gt;Etiam porta sem malesuada magna mollis euismod.&lt;/bs:text&gt;<br>        &lt;bs:text style=&quot;danger&quot;&gt;Donec ullamcorper nulla non metus auctor fringilla.&lt;/bs:text&gt;<br>        &lt;bs:text style=&quot;success&quot;&gt;Duis mollis, est non commodo luctus, nisi erat porttitor ligula.&lt;/bs:text&gt;<br>        &lt;bs:text style=&quot;info&quot;&gt;Maecenas sed diam eget risus varius blandit sit amet non magna.&lt;/bs:text&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md=&quot;12&quot;&gt;<br>                &lt;h2&gt;Blockquotes&lt;/h2&gt;<br>            &lt;/bs:col&gt;<br>            &lt;bs:col md=&quot;12&quot;&gt;<br>                &lt;bs:blockquote&gt;<br>                    &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer<br>                        posuere erat a ante.&lt;/p&gt;<br>                    &lt;small&gt;Someone famous in &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt;<br>                &lt;/bs:blockquote&gt;<br>            &lt;/bs:col&gt;<br>            &lt;bs:col md=&quot;12&quot;&gt;<br>                &lt;bs:blockquote reverse=&quot;true&quot;&gt;<br>                    &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer<br>                        posuere erat a ante.&lt;/p&gt;<br>                    &lt;small&gt;Someone famous in &lt;cite title=&quot;Source Title&quot;&gt;Source Title&lt;/cite&gt;&lt;/small&gt;<br>                &lt;/bs:blockquote&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Tables -->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Tables</bs:header>
                        <div class="bs-example">
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:table striped=&quot;true&quot; hover=&quot;true&quot; bordered=&quot;true&quot; responsive=&quot;true&quot; condensed=&quot;true&quot;&gt;<br>    &lt;thead&gt;<br>    &lt;tr&gt;<br>        &lt;th&gt;#&lt;/th&gt;<br>        &lt;th&gt;Column heading&lt;/th&gt;<br>        &lt;th&gt;Column heading&lt;/th&gt;<br>        &lt;th&gt;Column heading&lt;/th&gt;<br>    &lt;/tr&gt;<br>    &lt;/thead&gt;<br>    &lt;tbody&gt;<br>    &lt;tr&gt;<br>        &lt;td&gt;1&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>        &lt;td&gt;Column content&lt;/td&gt;<br>    &lt;/tr&gt;<br>    &lt;tr&gt;<br>        &lt;td&gt;...&lt;/td&gt;<br>        &lt;td&gt;...&lt;/td&gt;<br>        &lt;td&gt;...&lt;/td&gt;<br>        &lt;td&gt;...&lt;/td&gt;<br>    &lt;/tr&gt;<br>    &lt;/tbody&gt;<br>&lt;/bs:table&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Forms -->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Forms</bs:header>
                        <bs:form horizontal="true" legend="Legend" _class="bs-example bs-example-form">
                            <bs:form-group>
                                <bs:form-control type="text" label="Email" labelWidth="2" _id="inputEmail" placeholder="Email"/>
                            </bs:form-group>
                            <bs:form-group>
                                <bs:form-control type="password" label="Password" labelWidth="2" _id="inputPassword" placeholder="Password">
                                    <bs:form-control type="checkbox">
                                        <bs:checkbox checked="true">Remember Me</bs:checkbox>
                                    </bs:form-control>
                                </bs:form-control>
                            </bs:form-group>
                            <bs:form-group>
                                <bs:form-control type="textarea" label="Textarea" labelWidth="2" _id="textArea" value="Textarea"
                                                 helpBlock="A longer block of help text that breaks onto a new line and may extend beyond one line."/>
                            </bs:form-group>
                            <bs:form-group>
                                <bs:form-control type="radio" label="Radios" labelWidth="2">
                                    <bs:radio name="optionRadios" value="option1" checked="true">Option one is this</bs:radio>
                                    <bs:radio name="optionRadios" value="option2">Option two can be something else</bs:radio>
                                </bs:form-control>
                            </bs:form-group>
                            <bs:form-group>
                                <bs:form-control type="select" label="Selects" labelWidth="2" name="select1" _id="select1">
                                    <option value="option1">1</option>
                                    <option value="option2" selected="selected">2</option>
                                    <option value="option3">3</option>
                                </bs:form-control>
                            </bs:form-group>
                            <bs:form-group>
                                <bs:form-control type="select" multiple="true" label="Multiple" labelWidth="2" name="select2" _id="select2">
                                    <option value="option1">1</option>
                                    <option value="option2" selected="selected">2</option>
                                    <option value="option3">3</option>
                                    <option value="option4" selected="selected">4</option>
                                    <option value="option5">5</option>
                                </bs:form-control>
                            </bs:form-group>
                            <bs:form-group>
                                <bs:col md="10" mdOffset="2">
                                    <bs:button type="submit" style="primary">Submit</bs:button>
                                    <bs:button type="reset" style="default">Cancel</bs:button>
                                </bs:col>
                            </bs:form-group>
                        </bs:form>
                        <div class="highlight">
                            <pre>&lt;bs:form horizontal=&quot;true&quot; legend=&quot;Legend&quot; _class=&quot;bs-example bs-example-form&quot;&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:form-control type=&quot;text&quot; label=&quot;Email&quot; labelWidth=&quot;2&quot; _id=&quot;inputEmail&quot; placeholder=&quot;Email&quot;/&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:form-control type=&quot;password&quot; label=&quot;Password&quot; labelWidth=&quot;2&quot; _id=&quot;inputPassword&quot; placeholder=&quot;Password&quot;&gt;<br>            &lt;bs:form-control type=&quot;checkbox&quot;&gt;<br>                &lt;bs:checkbox checked=&quot;true&quot;&gt;Remember Me&lt;/bs:checkbox&gt;<br>            &lt;/bs:form-control&gt;<br>        &lt;/bs:form-control&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:form-control type=&quot;textarea&quot; label=&quot;Textarea&quot; labelWidth=&quot;2&quot; _id=&quot;textArea&quot; value=&quot;Textarea&quot;<br>                            helpBlock=&quot;A longer block of help text that breaks onto a new line and may extend beyond one line.&quot;/&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:form-control type=&quot;radio&quot; label=&quot;Radios&quot; labelWidth=&quot;2&quot;&gt;<br>            &lt;bs:radio name=&quot;optionRadios&quot; value=&quot;option1&quot; checked=&quot;true&quot;&gt;Option one is this&lt;/bs:radio&gt;<br>            &lt;bs:radio name=&quot;optionRadios&quot; value=&quot;option2&quot;&gt;Option two can be something else&lt;/bs:radio&gt;<br>        &lt;/bs:form-control&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:form-control type=&quot;select&quot; label=&quot;Selects&quot; labelWidth=&quot;2&quot; name=&quot;select1&quot; _id=&quot;select1&quot;&gt;<br>            &lt;option value=&quot;option1&quot;&gt;1&lt;/option&gt;<br>            &lt;option value=&quot;option2&quot; selected=&quot;selected&quot;&gt;2&lt;/option&gt;<br>            &lt;option value=&quot;option3&quot;&gt;3&lt;/option&gt;<br>        &lt;/bs:form-control&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:form-control type=&quot;select&quot; multiple=&quot;true&quot; label=&quot;Multiple&quot; labelWidth=&quot;2&quot; name=&quot;select2&quot; _id=&quot;select2&quot;&gt;<br>            &lt;option value=&quot;option1&quot;&gt;1&lt;/option&gt;<br>            &lt;option value=&quot;option2&quot; selected=&quot;selected&quot;&gt;2&lt;/option&gt;<br>            &lt;option value=&quot;option3&quot;&gt;3&lt;/option&gt;<br>            &lt;option value=&quot;option4&quot; selected=&quot;selected&quot;&gt;4&lt;/option&gt;<br>            &lt;option value=&quot;option5&quot;&gt;5&lt;/option&gt;<br>        &lt;/bs:form-control&gt;<br>    &lt;/bs:form-group&gt;<br>    &lt;bs:form-group&gt;<br>        &lt;bs:col md=&quot;10&quot; mdOffset=&quot;2&quot;&gt;<br>            &lt;bs:button type=&quot;submit&quot; style=&quot;primary&quot;&gt;Submit&lt;/bs:button&gt;<br>            &lt;bs:button type=&quot;reset&quot; style=&quot;default&quot;&gt;Cancel&lt;/bs:button&gt;<br>        &lt;/bs:col&gt;<br>    &lt;/bs:form-group&gt;<br>&lt;/bs:form&gt;</pre>
                        </div>
                        <div class="bs-example">
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:form-group&gt;<br>    &lt;bs:form-control _id=&quot;focusedInput&quot; type=&quot;text&quot; label=&quot;Focused input&quot; value=&quot;This is focused...&quot;/&gt;<br>&lt;/bs:form-group&gt;<br>&lt;bs:form-group&gt;<br>    &lt;bs:form-control _id=&quot;disabledInput&quot; type=&quot;text&quot; label=&quot;Disabled input&quot; disabled=&quot;true&quot; placeholder=&quot;Disabled input here...&quot;/&gt;<br>&lt;/bs:form-group&gt;<br>&lt;bs:form-group hasWarning=&quot;true&quot;&gt;<br>    &lt;bs:form-control _id=&quot;inputWarning&quot; type=&quot;text&quot; label=&quot;Input warning&quot;/&gt;<br>&lt;/bs:form-group&gt;<br>&lt;bs:form-group hasError=&quot;true&quot;&gt;<br>    &lt;bs:form-control _id=&quot;inputError&quot; type=&quot;text&quot; label=&quot;Input error&quot;/&gt;<br>&lt;/bs:form-group&gt;<br>&lt;bs:form-group hasSuccess=&quot;true&quot;&gt;<br>    &lt;bs:form-control _id=&quot;inputSuccess&quot; type=&quot;text&quot; label=&quot;Input Success&quot;/&gt;<br>&lt;/bs:form-group&gt;<br>&lt;bs:form-group large=&quot;true&quot;&gt;<br>    &lt;bs:form-control _id=&quot;largeInput&quot; type=&quot;text&quot; label=&quot;Large input&quot;/&gt;<br>&lt;/bs:form-group&gt;<br>&lt;bs:form-group small=&quot;true&quot;&gt;<br>    &lt;bs:form-control _id=&quot;smallInput&quot; type=&quot;text&quot; label=&quot;Small input&quot;/&gt;<br>&lt;/bs:form-group&gt;<br>&lt;bs:form-group&gt;<br>    &lt;bs:form-control _id=&quot;defaultInput&quot; type=&quot;text&quot; label=&quot;Default input&quot;/&gt;<br>&lt;/bs:form-group&gt;<br>&lt;bs:form-group&gt;<br>    &lt;bs:form-control label=&quot;Input addons&quot;&gt;<br>        &lt;bs:input-group&gt;<br>            &lt;bs:input-group addon=&quot;true&quot;&gt;$&lt;/bs:input-group&gt;<br>            &lt;bs:form-control type=&quot;text&quot;/&gt;<br>            &lt;bs:input-group addon=&quot;true&quot; btn=&quot;true&quot;&gt;<br>                &lt;bs:button style=&quot;default&quot;&gt;Button&lt;/bs:button&gt;<br>            &lt;/bs:input-group&gt;<br>        &lt;/bs:input-group&gt;<br>    &lt;/bs:form-control&gt;<br>&lt;/bs:form-group&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Navs-->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Navs</bs:header>
                        <div class="bs-example">
                            <bs:row>
                                <bs:col md="6">
                                    <h2>Tabs</h2>
                                    <bs:nav tabs="true" _style="margin-bottom: 15px;">
                                        <bs:item tabId="home" active="true">Home</bs:item>
                                        <bs:item tabId="profile">Profile</bs:item>
                                        <bs:item href="javascript:void(0)" disabled="true">Disabled</bs:item>
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
                                            <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt
                                                tofu stumptown aliqua, retro synth master cleanse. Mustache cliche
                                                tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro
                                                keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry
                                                richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan
                                                aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                                        </bs:panel>
                                        <bs:panel _id="profile" tabs="true">
                                            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla
                                                single-origin coffee squid. Exercitation +1 labore velit, blog sartorial
                                                PBR leggings next level wes anderson artisan four loko farm-to-table
                                                craft beer twee. Qui photo booth letterpress, commodo enim craft beer
                                                mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud
                                                organic, assumenda labore aesthetic magna delectus mollit.</p>
                                        </bs:panel>
                                        <bs:panel _id="dropdown1" tabs="true">
                                            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out
                                                mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade.
                                                Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard
                                                locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR
                                                banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
                                        </bs:panel>
                                        <bs:panel _id="dropdown2" tabs="true">
                                            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party
                                                before they sold out master cleanse gluten-free squid scenester freegan
                                                cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf
                                                cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR,
                                                banh mi before they sold out farm-to-table VHS viral locavore cosby
                                                sweater.</p>
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;h2&gt;Tabs&lt;/h2&gt;<br>        &lt;bs:nav tabs=&quot;true&quot; _style=&quot;margin-bottom: 15px;&quot;&gt;<br>            &lt;bs:item tabId=&quot;home&quot; active=&quot;true&quot;&gt;Home&lt;/bs:item&gt;<br>            &lt;bs:item tabId=&quot;profile&quot;&gt;Profile&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;javascript:void(0)&quot; disabled=&quot;true&quot;&gt;Disabled&lt;/bs:item&gt;<br>            &lt;bs:item dropdown=&quot;true&quot;&gt;<br>                &lt;jsp:attribute name=&quot;title&quot;&gt;Dropdown &lt;bs:icon caret=&quot;true&quot;/&gt;&lt;/jsp:attribute&gt;<br>                &lt;jsp:body&gt;<br>                    &lt;bs:item tabId=&quot;dropdown1&quot;&gt;Action&lt;/bs:item&gt;<br>                    &lt;bs:item divider=&quot;true&quot;/&gt;<br>                    &lt;bs:item tabId=&quot;dropdown2&quot;&gt;Another action&lt;/bs:item&gt;<br>                &lt;/jsp:body&gt;<br>            &lt;/bs:item&gt;<br>        &lt;/bs:nav&gt;<br>        &lt;bs:tabs&gt;<br>            &lt;bs:panel _id=&quot;home&quot; tabs=&quot;true&quot; active=&quot;true&quot;&gt;<br>                &lt;p&gt;Raw denim you probably haven&#x27;t heard of them jean shorts Austin. Nesciunt<br>                    tofu stumptown aliqua, retro synth master cleanse. Mustache cliche<br>                    tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro<br>                    keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry<br>                    richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan<br>                    aliquip quis cardigan american apparel, butcher voluptate nisi qui.&lt;/p&gt;<br>            &lt;/bs:panel&gt;<br>            &lt;bs:panel _id=&quot;profile&quot; tabs=&quot;true&quot;&gt;<br>                &lt;p&gt;Food truck fixie locavore, accusamus mcsweeney&#x27;s marfa nulla<br>                    single-origin coffee squid. Exercitation +1 labore velit, blog sartorial<br>                    PBR leggings next level wes anderson artisan four loko farm-to-table<br>                    craft beer twee. Qui photo booth letterpress, commodo enim craft beer<br>                    mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud<br>                    organic, assumenda labore aesthetic magna delectus mollit.&lt;/p&gt;<br>            &lt;/bs:panel&gt;<br>            &lt;bs:panel _id=&quot;dropdown1&quot; tabs=&quot;true&quot;&gt;<br>                &lt;p&gt;Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out<br>                    mcsweeney&#x27;s organic lomo retro fanny pack lo-fi farm-to-table readymade.<br>                    Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard<br>                    locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR<br>                    banksy irony. Leggings gentrify squid 8-bit cred pitchfork.&lt;/p&gt;<br>            &lt;/bs:panel&gt;<br>            &lt;bs:panel _id=&quot;dropdown2&quot; tabs=&quot;true&quot;&gt;<br>                &lt;p&gt;Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party<br>                    before they sold out master cleanse gluten-free squid scenester freegan<br>                    cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf<br>                    cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR,<br>                    banh mi before they sold out farm-to-table VHS viral locavore cosby<br>                    sweater.&lt;/p&gt;<br>            &lt;/bs:panel&gt;<br>        &lt;/bs:tabs&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;h2&gt;Pills&lt;/h2&gt;<br>        &lt;bs:nav pills=&quot;true&quot;&gt;<br>            &lt;bs:item href=&quot;#&quot; active=&quot;true&quot;&gt;Home&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;Profile &lt;bs:badge&gt;12&lt;/bs:badge&gt;&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot; disabled=&quot;true&quot;&gt;Disabled&lt;/bs:item&gt;<br>            &lt;bs:item dropdown=&quot;true&quot;&gt;<br>                &lt;jsp:attribute name=&quot;title&quot;&gt;Dropdown &lt;bs:icon caret=&quot;true&quot;/&gt;&lt;/jsp:attribute&gt;<br>                &lt;jsp:body&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Action&lt;/bs:item&gt;<br>                    &lt;bs:item divider=&quot;true&quot;/&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Another action&lt;/bs:item&gt;<br>                &lt;/jsp:body&gt;<br>            &lt;/bs:item&gt;<br>        &lt;/bs:nav&gt;<br>        &lt;br&gt;<br>        &lt;bs:nav pills=&quot;true&quot; stacked=&quot;true&quot;&gt;<br>            &lt;bs:item href=&quot;#&quot; active=&quot;true&quot;&gt;Home&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;Profile &lt;bs:badge&gt;12&lt;/bs:badge&gt;&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot; disabled=&quot;true&quot;&gt;Disabled&lt;/bs:item&gt;<br>            &lt;bs:item dropdown=&quot;true&quot;&gt;<br>                &lt;jsp:attribute name=&quot;title&quot;&gt;Dropdown &lt;bs:icon caret=&quot;true&quot;/&gt;&lt;/jsp:attribute&gt;<br>                &lt;jsp:body&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Action&lt;/bs:item&gt;<br>                    &lt;bs:item divider=&quot;true&quot;/&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Another action&lt;/bs:item&gt;<br>                &lt;/jsp:body&gt;<br>            &lt;/bs:item&gt;<br>        &lt;/bs:nav&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </div>
                        <div class="bs-example">
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;h2&gt;Pagination&lt;/h2&gt;<br>        &lt;bs:pagination&gt;<br>            &lt;bs:item href=&quot;#&quot; disabled=&quot;true&quot;&gt;&amp;laquo;&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;1&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot; active=&quot;true&quot;&gt;2&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;3&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;4&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;5&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;&amp;raquo;&lt;/bs:item&gt;<br>        &lt;/bs:pagination&gt;<br>        &lt;bs:pagination large=&quot;true&quot;&gt;<br>            &lt;bs:item href=&quot;#&quot; disabled=&quot;true&quot;&gt;&amp;laquo;&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;1&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot; active=&quot;true&quot;&gt;2&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;3&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;&amp;raquo;&lt;/bs:item&gt;<br>        &lt;/bs:pagination&gt;<br>        &lt;bs:pagination small=&quot;true&quot;&gt;<br>            &lt;bs:item href=&quot;#&quot; disabled=&quot;true&quot;&gt;&amp;laquo;&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;1&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot; active=&quot;true&quot;&gt;2&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;3&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;4&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;5&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;&amp;raquo;&lt;/bs:item&gt;<br>        &lt;/bs:pagination&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md=&quot;12&quot;&gt;<br>                &lt;h2&gt;Pager&lt;/h2&gt;<br>                &lt;bs:pagination pager=&quot;true&quot;&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Previous&lt;/bs:item&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Next&lt;/bs:item&gt;<br>                &lt;/bs:pagination&gt;<br>                &lt;bs:pagination pager=&quot;true&quot;&gt;<br>                    &lt;bs:item href=&quot;#&quot; previous=&quot;true&quot; disabled=&quot;true&quot;&gt;&amp;larr; Older&lt;/bs:item&gt;<br>                    &lt;bs:item href=&quot;#&quot; next=&quot;true&quot;&gt;Newer &amp;rarr;&lt;/bs:item&gt;<br>                &lt;/bs:pagination&gt;<br>            &lt;/bs:col&gt;<br>            &lt;bs:col md=&quot;12&quot;&gt;<br>                &lt;h2&gt;Breadcrumbs&lt;/h2&gt;<br>                &lt;bs:breadcrumb&gt;<br>                    &lt;bs:item active=&quot;true&quot;&gt;&lt;bs:icon fa=&quot;true&quot; style=&quot;home&quot; faW=&quot;true&quot;&gt;Home&lt;/bs:icon&gt;&lt;/bs:item&gt;<br>                    &lt;bs:item href=&quot;#&quot;&gt;Library&lt;/bs:item&gt;<br>                    &lt;bs:item&gt;Data&lt;/bs:item&gt;<br>                &lt;/bs:breadcrumb&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Indicators-->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Indicators</bs:header>
                        <div class="bs-example">
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;12&quot;&gt;<br>        &lt;h2&gt;Alerts&lt;/h2&gt;<br>        &lt;bs:alert style=&quot;warning&quot; dismissable=&quot;true&quot;&gt;<br>            &lt;h4&gt;Warning!&lt;/h4&gt;<br>            &lt;p&gt;Best check yo self, you&#x27;re not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, &lt;bs:alert-link href=&quot;#&quot; target=&quot;_blank&quot;&gt;vel scelerisque nisl consectetur et&lt;/bs:alert-link&gt;.&lt;/p&gt;<br>        &lt;/bs:alert&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;4&quot;&gt;<br>        &lt;bs:alert style=&quot;danger&quot; dismissable=&quot;true&quot;&gt;<br>            &lt;strong&gt;Oh snap!&lt;/strong&gt;<br>            &lt;bs:alert-link href=&quot;#&quot;&gt;Change a few things up&lt;/bs:alert-link&gt; and try submitting again.<br>        &lt;/bs:alert&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;4&quot;&gt;<br>        &lt;bs:alert style=&quot;success&quot; dismissable=&quot;true&quot;&gt;<br>            &lt;strong&gt;Well done!&lt;/strong&gt;<br>            You successfully read &lt;bs:alert-link href=&quot;#&quot;&gt;this important alert message&lt;/bs:alert-link&gt;.<br>        &lt;/bs:alert&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;4&quot;&gt;<br>        &lt;bs:alert style=&quot;info&quot; dismissable=&quot;true&quot;&gt;<br>            &lt;strong&gt;Heads up!&lt;/strong&gt;<br>            This &lt;bs:alert-link href=&quot;#&quot;&gt;alert needs your attention&lt;/bs:alert-link&gt;, but it&#x27;s not super important.<br>        &lt;/bs:alert&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;h2&gt;Labels&lt;/h2&gt;<br>        &lt;bs:label style=&quot;default&quot;&gt;Default&lt;/bs:label&gt;<br>        &lt;bs:label style=&quot;primary&quot;&gt;Primary&lt;/bs:label&gt;<br>        &lt;bs:label style=&quot;success&quot;&gt;Success&lt;/bs:label&gt;<br>        &lt;bs:label style=&quot;warning&quot;&gt;Warning&lt;/bs:label&gt;<br>        &lt;bs:label style=&quot;danger&quot;&gt;Danger&lt;/bs:label&gt;<br>        &lt;bs:label style=&quot;info&quot;&gt;Info&lt;/bs:label&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;h2&gt;Badges&lt;/h2&gt;<br>        &lt;bs:nav pills=&quot;true&quot;&gt;<br>            &lt;bs:item href=&quot;#&quot; active=&quot;true&quot;&gt;Home &lt;bs:badge&gt;12&lt;/bs:badge&gt;&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;Profile&lt;/bs:item&gt;<br>            &lt;bs:item href=&quot;#&quot;&gt;Message &lt;bs:badge&gt;3&lt;/bs:badge&gt;&lt;/bs:item&gt;<br>        &lt;/bs:nav&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Progress bars-->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Progress bars</bs:header>
                        <div class="bs-example">
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;12&quot;&gt;<br>        &lt;h3&gt;Basic&lt;/h3&gt;<br>        &lt;bs:progress&gt;&lt;bs:progress-bar value=&quot;60&quot;/&gt;&lt;/bs:progress&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;12&quot;&gt;<br>        &lt;h3&gt;Contextual alternatives&lt;/h3&gt;<br>        &lt;bs:progress&gt;&lt;bs:progress-bar style=&quot;info&quot; value=&quot;20&quot;/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress&gt;&lt;bs:progress-bar style=&quot;success&quot; value=&quot;40&quot;/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress&gt;&lt;bs:progress-bar style=&quot;warning&quot; value=&quot;60&quot;/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress&gt;&lt;bs:progress-bar style=&quot;danger&quot; value=&quot;80&quot;/&gt;&lt;/bs:progress&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;12&quot;&gt;<br>        &lt;h3&gt;Striped&lt;/h3&gt;<br>        &lt;bs:progress striped=&quot;true&quot;&gt;&lt;bs:progress-bar style=&quot;info&quot; value=&quot;20&quot;/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress striped=&quot;true&quot;&gt;&lt;bs:progress-bar style=&quot;success&quot; value=&quot;40&quot;/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress striped=&quot;true&quot;&gt;&lt;bs:progress-bar style=&quot;warning&quot; value=&quot;60&quot;/&gt;&lt;/bs:progress&gt;<br>        &lt;bs:progress striped=&quot;true&quot;&gt;&lt;bs:progress-bar style=&quot;danger&quot; value=&quot;80&quot;/&gt;&lt;/bs:progress&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;12&quot;&gt;<br>        &lt;h3&gt;Animated&lt;/h3&gt;<br>        &lt;bs:progress striped=&quot;true&quot; active=&quot;true&quot;&gt;&lt;bs:progress-bar value=&quot;45&quot;/&gt;&lt;/bs:progress&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;12&quot;&gt;<br>        &lt;h3&gt;Stacked&lt;/h3&gt;<br>        &lt;bs:progress&gt;<br>            &lt;bs:progress-bar style=&quot;success&quot; value=&quot;35&quot;/&gt;<br>            &lt;bs:progress-bar style=&quot;warning&quot; value=&quot;20&quot;/&gt;<br>            &lt;bs:progress-bar style=&quot;danger&quot; value=&quot;10&quot;/&gt;<br>        &lt;/bs:progress&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Containers-->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Containers</bs:header>
                        <div class="bs-example">
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
                                                <bs:list-item href="#" link="true" active="true">Cras justo odio
                                                    <bs:badge>14</bs:badge></bs:list-item>
                                                <bs:list-item href="#" link="true">Dapibus ac facilisis in
                                                    <bs:badge>2</bs:badge></bs:list-item>
                                                <bs:list-item href="#" link="true">Morbi leo risus
                                                    <bs:badge>1</bs:badge></bs:list-item>
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;12&quot;&gt;<br>        &lt;bs:jumbotron&gt;<br>            &lt;h1&gt;Jumbotron&lt;/h1&gt;<br>            &lt;p&gt;This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.&lt;/p&gt;<br>            &lt;bs:button style=&quot;primary&quot; large=&quot;true&quot;&gt;Learn more&lt;/bs:button&gt;<br>        &lt;/bs:jumbotron&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;12&quot;&gt;<br>        &lt;h2&gt;List groups&lt;/h2&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md=&quot;12&quot;&gt;<br>                &lt;bs:list-group&gt;<br>                    &lt;bs:list-item&gt;Cras justo odio &lt;bs:badge&gt;14&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                    &lt;bs:list-item&gt;Dapibus ac facilisis in &lt;bs:badge&gt;2&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                    &lt;bs:list-item&gt;Morbi leo risus &lt;bs:badge&gt;1&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                &lt;/bs:list-group&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md=&quot;12&quot;&gt;<br>                &lt;bs:list-group link=&quot;true&quot;&gt;<br>                    &lt;bs:list-item href=&quot;#&quot; link=&quot;true&quot; active=&quot;true&quot;&gt;Cras justo odio<br>                        &lt;bs:badge&gt;14&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                    &lt;bs:list-item href=&quot;#&quot; link=&quot;true&quot;&gt;Dapibus ac facilisis in<br>                        &lt;bs:badge&gt;2&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                    &lt;bs:list-item href=&quot;#&quot; link=&quot;true&quot;&gt;Morbi leo risus<br>                        &lt;bs:badge&gt;1&lt;/bs:badge&gt;&lt;/bs:list-item&gt;<br>                &lt;/bs:list-group&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;bs:list-group link=&quot;true&quot;&gt;<br>            &lt;bs:list-item href=&quot;#&quot; link=&quot;true&quot; active=&quot;true&quot; heading=&quot;List group item heading&quot;&gt;<br>                Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.<br>            &lt;/bs:list-item&gt;<br>            &lt;bs:list-item href=&quot;#&quot; link=&quot;true&quot; heading=&quot;List group item heading&quot;&gt;<br>                Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.<br>            &lt;/bs:list-item&gt;<br>            &lt;bs:list-item href=&quot;#&quot; link=&quot;true&quot; heading=&quot;List group item heading&quot;&gt;<br>                Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.<br>            &lt;/bs:list-item&gt;<br>        &lt;/bs:list-group&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </div>
                        <div class="bs-example">
                            <bs:row>
                                <bs:col md="12">
                                    <h2>Panels</h2>
                                </bs:col>
                            </bs:row>
                            <bs:row>
                                <bs:col md="6">
                                    <bs:panel><bs:panel-body>Basic panel</bs:panel-body></bs:panel>
                                    <bs:panel title="Panel heading"><bs:panel-body>Panel content</bs:panel-body></bs:panel>
                                    <bs:panel title="Panel heading" footer="Pannel footer"><bs:panel-body>Panel content</bs:panel-body></bs:panel>
                                    <bs:panel style="primary" title="Panel primary"><bs:panel-body>Panel content</bs:panel-body></bs:panel>
                                </bs:col>
                                <bs:col md="6">
                                    <bs:panel style="success" title="Panel success"><bs:panel-body>Panel content</bs:panel-body></bs:panel>
                                    <bs:panel style="warning" title="Panel warning"><bs:panel-body>Panel content</bs:panel-body></bs:panel>
                                    <bs:panel style="info" title="Panel info"><bs:panel-body>Panel content</bs:panel-body></bs:panel>
                                    <bs:panel style="danger" title="Panel danger"><bs:panel-body>Panel content</bs:panel-body></bs:panel>
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;12&quot;&gt;<br>        &lt;h2&gt;Panels&lt;/h2&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;bs:panel&gt;&lt;bs:panel-body&gt;Basic panel&lt;/bs:panel-body&gt;&lt;/bs:panel&gt;<br>        &lt;bs:panel title=&quot;Panel heading&quot;&gt;&lt;bs:panel-body&gt;Panel content&lt;/bs:panel-body&gt;&lt;/bs:panel&gt;<br>        &lt;bs:panel title=&quot;Panel heading&quot; footer=&quot;Pannel footer&quot;&gt;&lt;bs:panel-body&gt;Panel content&lt;/bs:panel-body&gt;&lt;/bs:panel&gt;<br>        &lt;bs:panel style=&quot;primary&quot; title=&quot;Panel primary&quot;&gt;&lt;bs:panel-body&gt;Panel content&lt;/bs:panel-body&gt;&lt;/bs:panel&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;bs:panel style=&quot;success&quot; title=&quot;Panel success&quot;&gt;&lt;bs:panel-body&gt;Panel content&lt;/bs:panel-body&gt;&lt;/bs:panel&gt;<br>        &lt;bs:panel style=&quot;warning&quot; title=&quot;Panel warning&quot;&gt;&lt;bs:panel-body&gt;Panel content&lt;/bs:panel-body&gt;&lt;/bs:panel&gt;<br>        &lt;bs:panel style=&quot;info&quot; title=&quot;Panel info&quot;&gt;&lt;bs:panel-body&gt;Panel content&lt;/bs:panel-body&gt;&lt;/bs:panel&gt;<br>        &lt;bs:panel style=&quot;danger&quot; title=&quot;Panel danger&quot;&gt;&lt;bs:panel-body&gt;Panel content&lt;/bs:panel-body&gt;&lt;/bs:panel&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;12&quot;&gt;<br>        &lt;h2&gt;Wells&lt;/h2&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;<br>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;4&quot;&gt;<br>        &lt;bs:well&gt;Look, I&#x27;m in a well!&lt;/bs:well&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;4&quot;&gt;<br>        &lt;bs:well small=&quot;true&quot;&gt;Look, I&#x27;m in a small well!&lt;/bs:well&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;4&quot;&gt;<br>        &lt;bs:well large=&quot;true&quot;&gt;Look, I&#x27;m in a large well!&lt;/bs:well&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Dialogs-->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Dialogs</bs:header>
                        <div class="bs-example">
                            <bs:row>
                                <bs:col md="6">
                                    <h2>Modals</h2>
                                    <bs:button style="primary" large="true" modalId="modalDemo">Show Modal</bs:button>
                                    <bs:modal _id="modalDemo" fade="true">
                                        <bs:modal-header title="Modal title" hideCloseBtn="true"/>
                                        <bs:modal-body>One fine body...</bs:modal-body>
                                        <bs:modal-footer>
                                            <bs:button style="primary">Save changes</bs:button>
                                            <bs:button style="default" data-dismiss="modal">Close</bs:button>
                                        </bs:modal-footer>
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
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;h2&gt;Modals&lt;/h2&gt;<br>        &lt;bs:button style=&quot;primary&quot; large=&quot;true&quot; modalId=&quot;modalDemo&quot;&gt;Show Modal&lt;/bs:button&gt;<br>        &lt;bs:modal _id=&quot;modalDemo&quot; fade=&quot;true&quot;&gt;<br>            &lt;bs:modal-header title=&quot;Modal title&quot; hideCloseBtn=&quot;true&quot;/&gt;<br>            &lt;bs:modal-body&gt;One fine body...&lt;/bs:modal-body&gt;<br>            &lt;bs:modal-footer&gt;<br>                &lt;bs:button style=&quot;primary&quot;&gt;Save changes&lt;/bs:button&gt;<br>                &lt;bs:button style=&quot;default&quot; data-dismiss=&quot;modal&quot;&gt;Close&lt;/bs:button&gt;<br>            &lt;/bs:modal-footer&gt;<br>        &lt;/bs:modal&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;6&quot;&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md=&quot;12&quot;&gt;<br>                &lt;h2&gt;Popovers&lt;/h2&gt;<br>                &lt;bs:button style=&quot;default&quot; popover=&quot;Popover on left.&quot; placement=&quot;left&quot;&gt;Left&lt;/bs:button&gt;<br>                &lt;bs:button style=&quot;default&quot; popover=&quot;Popover on top.&quot; placement=&quot;top&quot;&gt;Top&lt;/bs:button&gt;<br>                &lt;bs:button style=&quot;default&quot; popover=&quot;Popover on bottom.&quot; placement=&quot;bottom&quot;&gt;Bottom&lt;/bs:button&gt;<br>                &lt;bs:button style=&quot;default&quot; popover=&quot;Popover on right.&quot; placement=&quot;right&quot;&gt;Right&lt;/bs:button&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>        &lt;bs:row&gt;<br>            &lt;bs:col md=&quot;12&quot;&gt;<br>                &lt;h2&gt;Tooltips&lt;/h2&gt;<br>                &lt;bs:button style=&quot;default&quot; tip=&quot;Tooltip on left.&quot; placement=&quot;left&quot;&gt;Left&lt;/bs:button&gt;<br>                &lt;bs:button style=&quot;default&quot; tip=&quot;Tooltip on top.&quot; placement=&quot;top&quot;&gt;Top&lt;/bs:button&gt;<br>                &lt;bs:button style=&quot;default&quot; tip=&quot;Tooltip on bottom.&quot; placement=&quot;bottom&quot;&gt;Bottom&lt;/bs:button&gt;<br>                &lt;bs:button style=&quot;default&quot; tip=&quot;Tooltip on right.&quot; placement=&quot;right&quot;&gt;Right&lt;/bs:button&gt;<br>            &lt;/bs:col&gt;<br>        &lt;/bs:row&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Images-->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Images</bs:header>
                        <div class="bs-example">
                            <bs:img dataSrc="holder.js/140x140" rounded="true" alt="140x140"/>
                            <bs:img dataSrc="holder.js/140x140" circle="true" alt="140x140"/>
                            <bs:img dataSrc="holder.js/140x140" thumbnail="true" alt="140x140"/>
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:img dataSrc=&quot;holder.js/140x140&quot; rounded=&quot;true&quot; alt=&quot;140x140&quot;/&gt;<br>&lt;bs:img dataSrc=&quot;holder.js/140x140&quot; circle=&quot;true&quot; alt=&quot;140x140&quot;/&gt;<br>&lt;bs:img dataSrc=&quot;holder.js/140x140&quot; thumbnail=&quot;true&quot; alt=&quot;140x140&quot;/&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Page Header-->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Page Header</bs:header>
                        <div class="bs-example">
                            <bs:header>
                                <h1>Example page header <small>Subtext for header</small></h1>
                            </bs:header>
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:header&gt;<br>    &lt;h1&gt;Example page header &lt;small&gt;Subtext for header&lt;/small&gt;&lt;/h1&gt;<br>&lt;/bs:header&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Responsive embed-->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Responsive embed</bs:header>
                        <div class="bs-example">
                            <bs:embed ratio16by9="true" iframe="true" allowfullscreen="true">https://player.youku.com/embed/XMzU2NzQyODI4NA==</bs:embed>
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:embed ratio16by9=&quot;true&quot; iframe=&quot;true&quot; allowfullscreen=&quot;true&quot;&gt;https://player.youku.com/embed/XMzU2NzQyODI4NA==&lt;/bs:embed&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Thumbnails-->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Thumbnails</bs:header>
                        <h2 id="thumbnails-default">Default example</h2>
                        <p>By default, Bootstrap's thumbnails are designed to showcase linked images with minimal required markup.</p>
                        <div class="bs-example">
                            <bs:row>
                                <bs:col md="3" xs="6"><bs:thumbnail dataSrc="holder.js/100%x180" alt="100%x180"/></bs:col>
                                <bs:col md="3" xs="6"><bs:thumbnail dataSrc="holder.js/100%x180" alt="100%x180"/></bs:col>
                                <bs:col md="3" xs="6"><bs:thumbnail dataSrc="holder.js/100%x180" alt="100%x180"/></bs:col>
                                <bs:col md="3" xs="6"><bs:thumbnail dataSrc="holder.js/100%x180" alt="100%x180"/></bs:col>
                            </bs:row>
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;3&quot; xs=&quot;6&quot;&gt;&lt;bs:thumbnail dataSrc=&quot;holder.js/100%x180&quot; alt=&quot;100%x180&quot;/&gt;&lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;3&quot; xs=&quot;6&quot;&gt;&lt;bs:thumbnail dataSrc=&quot;holder.js/100%x180&quot; alt=&quot;100%x180&quot;/&gt;&lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;3&quot; xs=&quot;6&quot;&gt;&lt;bs:thumbnail dataSrc=&quot;holder.js/100%x180&quot; alt=&quot;100%x180&quot;/&gt;&lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;3&quot; xs=&quot;6&quot;&gt;&lt;bs:thumbnail dataSrc=&quot;holder.js/100%x180&quot; alt=&quot;100%x180&quot;/&gt;&lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </div>
                        <h2 id="thumbnails-custom-content">Custom content</h2>
                        <p>With a bit of extra markup, it's possible to add any kind of HTML content like headings, paragraphs, or buttons into thumbnails.</p>
                        <div class="bs-example">
                            <bs:row>
                                <bs:col md="4" sm="6">
                                    <bs:thumbnail dataSrc="holder.js/100%x180" alt="100%x180">
                                        <jsp:attribute name="caption">
                                            <h3>Thumbnail lable</h3>
                                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                            <p>
                                                <bs:button href="#" style="primary">Button</bs:button>
                                                <bs:button href="#" style="default">Button</bs:button>
                                            </p>
                                        </jsp:attribute>
                                    </bs:thumbnail>
                                </bs:col>
                                <bs:col md="4" sm="6">
                                    <bs:thumbnail dataSrc="holder.js/100%x180" alt="100%x180">
                                        <jsp:attribute name="caption">
                                            <h3>Thumbnail lable</h3>
                                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                            <p>
                                                <bs:button href="#" style="primary">Button</bs:button>
                                                <bs:button href="#" style="default">Button</bs:button>
                                            </p>
                                        </jsp:attribute>
                                    </bs:thumbnail>
                                </bs:col>
                                <bs:col md="4" sm="6">
                                    <bs:thumbnail dataSrc="holder.js/100%x180" alt="100%x180">
                                        <jsp:attribute name="caption">
                                            <h3>Thumbnail lable</h3>
                                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                            <p>
                                                <bs:button href="#" style="primary">Button</bs:button>
                                                <bs:button href="#" style="default">Button</bs:button>
                                            </p>
                                        </jsp:attribute>
                                    </bs:thumbnail>
                                </bs:col>
                            </bs:row>
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:row&gt;<br>    &lt;bs:col md=&quot;4&quot; sm=&quot;6&quot;&gt;<br>        &lt;bs:thumbnail dataSrc=&quot;holder.js/100%x180&quot; alt=&quot;100%x180&quot;&gt;<br>            &lt;jsp:attribute name=&quot;caption&quot;&gt;<br>                &lt;h3&gt;Thumbnail lable&lt;/h3&gt;<br>                &lt;p&gt;Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.&lt;/p&gt;<br>                &lt;p&gt;<br>                    &lt;bs:button href=&quot;#&quot; style=&quot;primary&quot;&gt;Button&lt;/bs:button&gt;<br>                    &lt;bs:button href=&quot;#&quot; style=&quot;default&quot;&gt;Button&lt;/bs:button&gt;<br>                &lt;/p&gt;<br>            &lt;/jsp:attribute&gt;<br>        &lt;/bs:thumbnail&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;4&quot; sm=&quot;6&quot;&gt;<br>        &lt;bs:thumbnail dataSrc=&quot;holder.js/100%x180&quot; alt=&quot;100%x180&quot;&gt;<br>            &lt;jsp:attribute name=&quot;caption&quot;&gt;<br>                &lt;h3&gt;Thumbnail lable&lt;/h3&gt;<br>                &lt;p&gt;...&lt;/p&gt;<br>                &lt;p&gt;<br>                    &lt;bs:button href=&quot;#&quot; style=&quot;primary&quot;&gt;Button&lt;/bs:button&gt;<br>                    &lt;bs:button href=&quot;#&quot; style=&quot;default&quot;&gt;Button&lt;/bs:button&gt;<br>                &lt;/p&gt;<br>            &lt;/jsp:attribute&gt;<br>        &lt;/bs:thumbnail&gt;<br>    &lt;/bs:col&gt;<br>    &lt;bs:col md=&quot;4&quot; sm=&quot;6&quot;&gt;<br>        &lt;bs:thumbnail dataSrc=&quot;holder.js/100%x180&quot; alt=&quot;100%x180&quot;&gt;<br>            &lt;jsp:attribute name=&quot;caption&quot;&gt;<br>                &lt;h3&gt;Thumbnail lable&lt;/h3&gt;<br>                &lt;p&gt;...&lt;/p&gt;<br>                &lt;p&gt;<br>                    &lt;bs:button href=&quot;#&quot; style=&quot;primary&quot;&gt;Button&lt;/bs:button&gt;<br>                    &lt;bs:button href=&quot;#&quot; style=&quot;default&quot;&gt;Button&lt;/bs:button&gt;<br>                &lt;/p&gt;<br>            &lt;/jsp:attribute&gt;<br>        &lt;/bs:thumbnail&gt;<br>    &lt;/bs:col&gt;<br>&lt;/bs:row&gt;</pre>
                        </div>
                    </div>
                    <!-- Docs: Media object-->
                    <div class="bs-docs-section">
                        <bs:header _tag="h1">Media object</bs:header>
                        <bs:text lead="true">Abstract object styles for building various types of components (like blog comments, Tweets, etc) that feature a left- or right-aligned image alongside textual content.</bs:text>
                        <h2 id="media-default">Default media</h2>
                        <p>The default media displays a media object (images, video, audio) to the left or right of a content block.</p>
                        <div class="bs-example">
                            <bs:media-item title="Media heading" src="holder.js/64x64" href="#">
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                            </bs:media-item>
                            <bs:media-item title="Media heading" src="holder.js/64x64" href="#">
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                                <bs:media-item title="Nested media heading" src="holder.js/64x64" href="#">
                                    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                                </bs:media-item>
                            </bs:media-item>
                            <bs:media-item title="Media heading" right="true" src="holder.js/64x64" href="#">
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                            </bs:media-item>
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:media-item title=&quot;Media heading&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>    &lt;p&gt;...&lt;/p&gt;<br>&lt;/bs:media-item&gt;<br>&lt;bs:media-item title=&quot;Media heading&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>    &lt;p&gt;...&lt;/p&gt;<br>    &lt;bs:media-item title=&quot;Nested media heading&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>        &lt;p&gt;...&lt;/p&gt;<br>    &lt;/bs:media-item&gt;<br>&lt;/bs:media-item&gt;<br>&lt;bs:media-item title=&quot;Media heading&quot; right=&quot;true&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>    &lt;p&gt;...&lt;/p&gt;<br>&lt;/bs:media-item&gt;</pre>
                        </div>
                        <h2 id="media-alignment">Media alignment</h2>
                        <p>The images or other media can be aligned top, middle, or bottom. The default is top aligned.</p>
                        <div class="bs-example">
                            <bs:media-item title="Top aligned media" src="holder.js/64x64" href="#">
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                            </bs:media-item>
                            <bs:media-item title="Middle aligned media" middle="true" src="holder.js/64x64" href="#">
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                            </bs:media-item>
                            <bs:media-item title="Bottom aligned media" bottom="true" src="holder.js/64x64" href="#">
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                            </bs:media-item>
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:media-item title=&quot;Top aligned media&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>    &lt;p&gt;...&lt;/p&gt;<br>&lt;/bs:media-item&gt;<br>&lt;bs:media-item title=&quot;Middle aligned media&quot; middle=&quot;true&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>    &lt;p&gt;...&lt;/p&gt;<br>&lt;/bs:media-item&gt;<br>&lt;bs:media-item title=&quot;Bottom aligned media&quot; bottom=&quot;true&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>    &lt;p&gt;...&lt;/p&gt;<br>&lt;/bs:media-item&gt;</pre>
                        </div>
                        <h2 id="media-list">Media list</h2>
                        <p>With a bit of extra markup, you can use media inside list (useful for comment threads or articles lists).</p>
                        <div class="bs-example">
                            <bs:media-list>
                                <bs:media-item title="Media heading" src="holder.js/64x64" href="#">
                                    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                    <bs:media-list>
                                        <bs:media-item title="Nested media heading" src="holder.js/64x64" href="#">
                                            <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                            <bs:media-item title="Nested media heading" src="holder.js/64x64" href="#">
                                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                            </bs:media-item>
                                        </bs:media-item>
                                    </bs:media-list>
                                    <bs:media-item title="Nested media heading" src="holder.js/64x64" href="#">
                                        <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                    </bs:media-item>
                                </bs:media-item>
                            </bs:media-list>
                        </div>
                        <div class="highlight">
                            <pre>&lt;bs:media-list&gt;<br>    &lt;bs:media-item title=&quot;Media heading&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>        &lt;p&gt;...&lt;/p&gt;<br>        &lt;bs:media-list&gt;<br>            &lt;bs:media-item title=&quot;Nested media heading&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>                &lt;p&gt;...&lt;/p&gt;<br>                &lt;bs:media-item title=&quot;Nested media heading&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>                    &lt;p&gt;...&lt;/p&gt;<br>                &lt;/bs:media-item&gt;<br>            &lt;/bs:media-item&gt;<br>        &lt;/bs:media-list&gt;<br>        &lt;bs:media-item title=&quot;Nested media heading&quot; src=&quot;holder.js/64x64&quot; href=&quot;#&quot;&gt;<br>            &lt;p&gt;...&lt;/p&gt;<br>        &lt;/bs:media-item&gt;<br>    &lt;/bs:media-item&gt;<br>&lt;/bs:media-list&gt;</pre>
                        </div>
                    </div>
                </bs:col>
                <bs:col md="3">
                    <div class="bs-docs-sidebar hidden-print hidden-sm hidden-xs">
                        <ul class="nav bs-docs-sidenav">
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
                            <bs:item href="#images">Images</bs:item>
                            <bs:item href="#page-header">Page Header</bs:item>
                            <bs:item href="#responsive-embed">Responsive embed</bs:item>
                            <bs:item href="#thumbnails" subitem="true" title="Thumbnails">
                                <bs:nav>
                                    <bs:item href="#thumbnails-default">Default example</bs:item>
                                    <bs:item href="#thumbnails-custom-content">Custom content</bs:item>
                                </bs:nav>
                            </bs:item>
                            <bs:item href="#media" subitem="true" title="Media object">
                                <bs:nav>
                                    <bs:item href="#media-default">Default media</bs:item>
                                    <bs:item href="#media-alignment">Media alignment</bs:item>
                                    <bs:item href="#media-list">Media list</bs:item>
                                </bs:nav>
                            </bs:item>
                        </ul>
                        <a href="#top" class="back-to-top"> Back to top </a>
                    </div>
                </bs:col>
            </bs:row>
        </bs:container>
        <div class="bs-docs-footer">
            <bs:container>
                <ul class="bs-docs-footer-links">
                    <bs:item href="https://github.com/suninformaiton/ymate-platform-v2">YMP</bs:item>
                    <bs:item href="https://github.com/suninformaiton/ymate-webui">WebUI</bs:item>
                    <bs:item href="https://getbootstrap.com/docs/3.3/">Bootstrap v3.3</bs:item>
                </ul>
                <bs:text justified="true">Copyright &copy; 2020 yMate.Net</bs:text>
            </bs:container>
        </div>
    </ymweb:layout>
</ymweb:ui>