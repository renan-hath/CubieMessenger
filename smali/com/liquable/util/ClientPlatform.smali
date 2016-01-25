.class public final enum Lcom/liquable/util/ClientPlatform;
.super Ljava/lang/Enum;
.source "ClientPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/util/ClientPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/util/ClientPlatform;

.field public static final enum ANDROID:Lcom/liquable/util/ClientPlatform;

.field public static final enum IOS:Lcom/liquable/util/ClientPlatform;


# instance fields
.field private final clientValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/liquable/util/ClientPlatform;

    const-string/jumbo v1, "ANDROID"

    const-string/jumbo v2, "android"

    invoke-direct {v0, v1, v3, v2}, Lcom/liquable/util/ClientPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/util/ClientPlatform;->ANDROID:Lcom/liquable/util/ClientPlatform;

    new-instance v0, Lcom/liquable/util/ClientPlatform;

    const-string/jumbo v1, "IOS"

    const-string/jumbo v2, "ios"

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/util/ClientPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/util/ClientPlatform;->IOS:Lcom/liquable/util/ClientPlatform;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/util/ClientPlatform;

    sget-object v1, Lcom/liquable/util/ClientPlatform;->ANDROID:Lcom/liquable/util/ClientPlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/util/ClientPlatform;->IOS:Lcom/liquable/util/ClientPlatform;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/util/ClientPlatform;->$VALUES:[Lcom/liquable/util/ClientPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "clientValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/liquable/util/ClientPlatform;->clientValue:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/liquable/util/ClientPlatform;
    .locals 1
    .param p0, "platform"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/ClientPlatform;->valueOf(Ljava/lang/String;)Lcom/liquable/util/ClientPlatform;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/util/ClientPlatform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "rawPlatforms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v2, Lcom/liquable/util/ClientPlatform;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 12
    .local v1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/liquable/util/ClientPlatform;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    .local v0, "rawPlatform":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/util/ClientPlatform;->parse(Ljava/lang/String;)Lcom/liquable/util/ClientPlatform;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    .end local v0    # "rawPlatform":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static toString(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/util/ClientPlatform;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "platforms":Ljava/util/Set;, "Ljava/util/Set<Lcom/liquable/util/ClientPlatform;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 24
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/util/ClientPlatform;

    .line 25
    .local v0, "platform":Lcom/liquable/util/ClientPlatform;
    invoke-virtual {v0}, Lcom/liquable/util/ClientPlatform;->getClientValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    .end local v0    # "platform":Lcom/liquable/util/ClientPlatform;
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/util/ClientPlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/liquable/util/ClientPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/util/ClientPlatform;

    return-object v0
.end method

.method public static values()[Lcom/liquable/util/ClientPlatform;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/liquable/util/ClientPlatform;->$VALUES:[Lcom/liquable/util/ClientPlatform;

    invoke-virtual {v0}, [Lcom/liquable/util/ClientPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/util/ClientPlatform;

    return-object v0
.end method


# virtual methods
.method public getClientValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/util/ClientPlatform;->clientValue:Ljava/lang/String;

    return-object v0
.end method
