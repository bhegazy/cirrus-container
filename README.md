# cirrus-container

Dockerize version of tool [SomeoneWeird/cirrus](https://github.com/SomeoneWeird/cirrus).

You can also use prebuilt docker image from docker hub [bhegazy/cirrus](https://hub.docker.com/r/bhegazy/cirrus)

## Usage

### list

```bash
docker run --rm -v $HOME/.aws:/root/.aws -v $(pwd)/aws:/aws bhegazy/cirrus list --region us-east-1
```

### create

```bash
docker run --rm -v $HOME/.aws:/root/.aws -v $(pwd)/aws:/aws bhegazy/cirrus create cirrustest --file /aws/cirrustest.template --params /aws/cirrustest.parameters --region us-east-1
```
## Or by using interactive shell

### delete

```shell
$ docker run -it -v $HOME/.aws:/root/.aws -v $(pwd)/aws:/aws --entrypoint sh bhegazy/cirrus
$ cirrus delete cirrustest --region us-east-1
? Are you sure you want to delete cirrustest? Yes
? Just confirming, which region did you want to delete this stack in? us-east-1
Deleting...
```

You will need to mount `$HOME/.aws` as volume for AWS credentials and mount your templates folder.  
