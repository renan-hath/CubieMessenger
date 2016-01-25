.class final Lcom/liquable/nemo/util/Optional$Absent;
.super Lcom/liquable/nemo/util/Optional;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Absent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/Optional",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/liquable/nemo/util/Optional$Absent;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/liquable/nemo/util/Optional$Absent;

    invoke-direct {v0}, Lcom/liquable/nemo/util/Optional$Absent;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/Optional$Absent;->INSTANCE:Lcom/liquable/nemo/util/Optional$Absent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/Optional;-><init>(Lcom/liquable/nemo/util/Optional$1;)V

    return-void
.end method

.method static synthetic access$100()Lcom/liquable/nemo/util/Optional$Absent;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/liquable/nemo/util/Optional$Absent;->INSTANCE:Lcom/liquable/nemo/util/Optional$Absent;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/liquable/nemo/util/Optional$Absent;->INSTANCE:Lcom/liquable/nemo/util/Optional$Absent;

    return-object v0
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 20
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "value is absent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x598df91c

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public or(Lcom/liquable/nemo/util/Optional;)Lcom/liquable/nemo/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/Optional",
            "<*>;)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "secondChoice":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<*>;"
    invoke-static {p1}, Lcom/liquable/nemo/util/Optional$Absent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/Optional;

    return-object v0
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 40
    const-string/jumbo v0, "use orNull() instead of or(null)"

    invoke-static {p1, v0}, Lcom/liquable/nemo/util/Optional$Absent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "Optional.absent()"

    return-object v0
.end method
