.class public Lcom/liquable/nemo/util/InstallReferrer;
.super Ljava/lang/Object;
.source "InstallReferrer.java"


# instance fields
.field private final referrer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/liquable/nemo/util/InstallReferrer;->referrer:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/liquable/nemo/util/InstallReferrer;->referrer:Ljava/lang/String;

    return-object v0
.end method
