[azukiapp/internal-services](http://images.azk.io/#/internal-services)
==================

Docker image (based in alpine) for test dns configurations, include: `dig`, `nslookup` and `nsupdate` tools.

###### Versions:

<versions>
- [`latest`](https://github.com/azukiapp/docker-dig/blob/master/Dockerfile)
- [`0.2.0`](https://github.com/azukiapp/docker-dig/blob/0.2.0/Dockerfile)
</versions>

### Usage with `azk`

```sh
$ azk shell --image=azukiapp/dig -- dig @dev.azk.io foo.dev.azk.io
$ azk shell --image=azukiapp/dig -- dig google.com
```

###### Image content:

  - [bash][bash]
  - dig
  - nslookup
  - nsupdate

## License

"Azuki", "azk" and the Azuki logo are copyright (c) 2013-2015 Azuki Serviços de Internet LTDA.

**azk** source code is released under Apache 2 License.

[azk]: https://github.com/azukiapp/azk
[azk_agent_doc]: http://docs.azk.io/en/agent/
[bash]: https://www.gnu.org/software/bash/
