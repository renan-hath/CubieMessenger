.class public Lcom/amazonaws/util/XpathUtils;
.super Ljava/lang/Object;
.source "XpathUtils.java"


# static fields
.field private static dateUtils:Lcom/amazonaws/util/DateUtils;

.field private static factory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    sput-object v0, Lcom/amazonaws/util/XpathUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    .line 48
    const-class v0, Lcom/amazonaws/util/XpathUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/XpathUtils;->log:Lorg/apache/commons/logging/Log;

    .line 50
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/XpathUtils;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v1, Lcom/amazonaws/util/NamespaceRemovingInputStream;

    invoke-direct {v1, p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    .end local p0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    sget-object v2, Lcom/amazonaws/util/XpathUtils;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 273
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 275
    return-object v0
.end method

.method private static evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-static {p1}, Lcom/amazonaws/util/XpathUtils;->isEmpty(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-object v1

    .line 310
    :cond_1
    invoke-static {p1, p0}, Lcom/amazonaws/util/XpathUtils;->evaluateXPath(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static evaluateXPath(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "xPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "currentSearchIndex":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 327
    const-string/jumbo v3, "/"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 329
    .local v1, "endingIndex":I
    const/4 v2, 0x0

    .line 330
    .local v2, "noderNameFromXPath":Ljava/lang/String;
    if-ne v1, v4, :cond_1

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    :goto_1
    invoke-static {p0, v2}, Lcom/amazonaws/util/XpathUtils;->findChildNodeWithName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 341
    if-ne v1, v4, :cond_2

    .line 349
    .end local v1    # "endingIndex":I
    .end local v2    # "noderNameFromXPath":Ljava/lang/String;
    :cond_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 351
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 359
    :goto_2
    return-object v3

    .line 336
    .restart local v1    # "endingIndex":I
    .restart local v2    # "noderNameFromXPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 346
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 347
    goto :goto_0

    .line 353
    .end local v1    # "endingIndex":I
    .end local v2    # "noderNameFromXPath":Ljava/lang/String;
    :cond_3
    if-eqz p0, :cond_4

    .line 355
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 359
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private static findChildNodeWithName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "childName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 365
    if-nez p0, :cond_1

    move-object p0, v2

    .line 386
    .end local p0    # "node":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    return-object p0

    .line 371
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 377
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 378
    .local v1, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 380
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 382
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    .line 378
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object p0, v2

    .line 386
    goto :goto_0
.end method

.method public static isEmpty(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 463
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
