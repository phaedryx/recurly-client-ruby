# Changelog

## [4.0.0](https://github.com/recurly/recurly-client-ruby/tree/4.0.0) (2021-03-01)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.18.1...4.0.0)

# Major Version Release

The 4.x major version of the client pairs with the `v2021-02-25` API version. This version of the client and the API contain breaking changes that should be considered before upgrading your integration.

## Breaking Changes in the API
All changes to the core API are documented in the [Developer Portal changelog](https://developers.recurly.com/api/changelog.html#v2021-02-25---current-ga-version)

## Breaking Changes in Client

- Remove `site_id` and `subdomain` from client initializer.  [#624]
- Remove `set_site_id` method from client.  [#627]
- Classify unexpected error responses from Recurly API via an HTTP status code mapping provided in `Recurly::Errors::ERROR_MAP`.  [#616]
- Remove `NetworkError` class. All error classes now extend the `APIError`. This means that the order of multiple rescue blocks will need to be re-considered.  [#616]

    ### 3.x
    
    ```ruby
    rescue Recurly::Errors::ValidationError => ex
      # catch a validation error
    rescue Recurly::Errors::APIError => ex
      # catch a generic api error
    rescue Recurly::Errors::TimeoutError => ex
      # catch a specific network error
    ```
    
    ### 4.x
    
    ```ruby
    rescue Recurly::Errors::ValidationError => ex
      # catch a validation error
    rescue Recurly::Errors::TimeoutError => ex
      # catch a specific network error
    rescue Recurly::Errors::APIError => ex
      # catch a generic api error
    ```

- Rename `InvalidResponseError` to `InvalidContentTypeError`.  [#616]
- Rename `UnavailableError` to `ServiceUnavailableError`.  [#616]
- Reorganize top-level keys of the optional parameters hash to improve clarity and create space for additional options.  [#619]

    ### 3.x
    
    ```ruby
    options = {
      limit: 200,
      headers: {
        'Accept-Language' => 'fr'
      }
    }
    accounts = @client.list_accounts(options)
    ```
    
    ### 4.x
    
    ```ruby
    options = {
      params: {
          limit: 200
      }
      headers: {
        'Accept-Language' => 'fr'
      }
    }
    accounts = @client.list_accounts(options)
    ```

**Implemented enhancements:**

- Remove site\_id and subdomain from client initializer [\#624](https://github.com/recurly/recurly-client-ruby/pull/624) ([joannasese](https://github.com/joannasese))

**Fixed bugs:**

- Every method is returning wrong number of arguments [\#664](https://github.com/recurly/recurly-client-ruby/issues/664)

**Merged pull requests:**

- Release 4.0.0 [\#669](https://github.com/recurly/recurly-client-ruby/pull/669) ([douglasmiller](https://github.com/douglasmiller))
- Updating changelog script and changelog generator config for 4.x release [\#663](https://github.com/recurly/recurly-client-ruby/pull/663) ([douglasmiller](https://github.com/douglasmiller))
- Removing unused method 'set\_site\_id' [\#627](https://github.com/recurly/recurly-client-ruby/pull/627) ([douglasmiller](https://github.com/douglasmiller))
- Updating 4.x client to expect query string params as \['params'\] [\#619](https://github.com/recurly/recurly-client-ruby/pull/619) ([douglasmiller](https://github.com/douglasmiller))
- Updating error mapping based on status code [\#616](https://github.com/recurly/recurly-client-ruby/pull/616) ([douglasmiller](https://github.com/douglasmiller))

## [3.18.1](https://github.com/recurly/recurly-client-ruby/tree/3.18.1) (2021-02-22)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.18.0...3.18.1)

## [3.18.0](https://github.com/recurly/recurly-client-ruby/tree/3.18.0) (2021-01-22)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.17.0...3.18.0)

## [3.17.0](https://github.com/recurly/recurly-client-ruby/tree/3.17.0) (2020-12-08)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.16.0...3.17.0)

## [3.16.0](https://github.com/recurly/recurly-client-ruby/tree/3.16.0) (2020-11-24)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.15.0...3.16.0)

## [3.15.0](https://github.com/recurly/recurly-client-ruby/tree/3.15.0) (2020-11-06)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.14.0...3.15.0)

## [3.14.0](https://github.com/recurly/recurly-client-ruby/tree/3.14.0) (2020-10-20)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.13.0...3.14.0)

## [3.13.0](https://github.com/recurly/recurly-client-ruby/tree/3.13.0) (2020-09-22)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.12.0...3.13.0)

## [3.12.0](https://github.com/recurly/recurly-client-ruby/tree/3.12.0) (2020-08-31)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.11.0...3.12.0)

## [3.11.0](https://github.com/recurly/recurly-client-ruby/tree/3.11.0) (2020-08-21)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.10.0...3.11.0)

## [3.10.0](https://github.com/recurly/recurly-client-ruby/tree/3.10.0) (2020-07-31)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.9.0...3.10.0)

## [3.9.0](https://github.com/recurly/recurly-client-ruby/tree/3.9.0) (2020-07-06)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.8.0...3.9.0)

**Implemented enhancements:**

- Mon Jul  6 14:48:05 UTC 2020 Upgrade API version v2019-10-10 [\#608](https://github.com/recurly/recurly-client-ruby/pull/608) ([douglasmiller](https://github.com/douglasmiller))

**Merged pull requests:**

- Release 3.9.0 [\#609](https://github.com/recurly/recurly-client-ruby/pull/609) ([douglasmiller](https://github.com/douglasmiller))

## [3.8.0](https://github.com/recurly/recurly-client-ruby/tree/3.8.0) (2020-07-01)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.7.0...3.8.0)

**Implemented enhancements:**

- Wed Jul  1 02:06:24 UTC 2020 Upgrade API version v2019-10-10 [\#605](https://github.com/recurly/recurly-client-ruby/pull/605) ([douglasmiller](https://github.com/douglasmiller))

**Merged pull requests:**

- Release 3.8.0 [\#606](https://github.com/recurly/recurly-client-ruby/pull/606) ([douglasmiller](https://github.com/douglasmiller))

## [3.7.0](https://github.com/recurly/recurly-client-ruby/tree/3.7.0) (2020-06-30)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.6.0...3.7.0)

**Implemented enhancements:**

- Mon Jun 29 17:01:25 UTC 2020 Upgrade API version v2019-10-10 [\#601](https://github.com/recurly/recurly-client-ruby/pull/601) ([douglasmiller](https://github.com/douglasmiller))

**Fixed bugs:**

- Allow :headers to be included in operations [\#597](https://github.com/recurly/recurly-client-ruby/pull/597) ([douglasmiller](https://github.com/douglasmiller))

**Merged pull requests:**

- Release 3.7.0 [\#602](https://github.com/recurly/recurly-client-ruby/pull/602) ([douglasmiller](https://github.com/douglasmiller))
- Fix doc link [\#596](https://github.com/recurly/recurly-client-ruby/pull/596) ([bhelx](https://github.com/bhelx))

## [3.6.0](https://github.com/recurly/recurly-client-ruby/tree/3.6.0) (2020-06-01)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.5.0...3.6.0)

**Implemented enhancements:**

- Latest Features [\#592](https://github.com/recurly/recurly-client-ruby/pull/592) ([bhelx](https://github.com/bhelx))
- Support the programmer passing their own logger [\#590](https://github.com/recurly/recurly-client-ruby/pull/590) ([bhelx](https://github.com/bhelx))

**Merged pull requests:**

- Release 3.6.0 [\#594](https://github.com/recurly/recurly-client-ruby/pull/594) ([bhelx](https://github.com/bhelx))
- Better format error message [\#593](https://github.com/recurly/recurly-client-ruby/pull/593) ([bhelx](https://github.com/bhelx))
- Let bump2version manage the getting started doc [\#591](https://github.com/recurly/recurly-client-ruby/pull/591) ([bhelx](https://github.com/bhelx))
- Document `Pager#first` and `Pager#count` [\#589](https://github.com/recurly/recurly-client-ruby/pull/589) ([bhelx](https://github.com/bhelx))
- Ensure that path parameters are not empty strings [\#587](https://github.com/recurly/recurly-client-ruby/pull/587) ([douglasmiller](https://github.com/douglasmiller))

## [3.5.0](https://github.com/recurly/recurly-client-ruby/tree/3.5.0) (2020-04-20)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.4.1...3.5.0)

**Implemented enhancements:**

- Tue Apr 14 20:21:21 UTC 2020 Upgrade API version v2019-10-10 [\#585](https://github.com/recurly/recurly-client-ruby/pull/585) ([bhelx](https://github.com/bhelx))
- Set an Idempotency-Key header, retry GET requests after 5xx errors [\#579](https://github.com/recurly/recurly-client-ruby/pull/579) ([isaachall](https://github.com/isaachall))
- Adding \#first and \#count methods to Pager [\#560](https://github.com/recurly/recurly-client-ruby/pull/560) ([douglasmiller](https://github.com/douglasmiller))

**Fixed bugs:**

- Fixing the omission of query params [\#581](https://github.com/recurly/recurly-client-ruby/pull/581) ([douglasmiller](https://github.com/douglasmiller))

**Merged pull requests:**

- Release 3.5.0 [\#586](https://github.com/recurly/recurly-client-ruby/pull/586) ([douglasmiller](https://github.com/douglasmiller))
- Included the to-be released changes in the changelog [\#584](https://github.com/recurly/recurly-client-ruby/pull/584) ([douglasmiller](https://github.com/douglasmiller))
- Add 2.7 to test matrix [\#582](https://github.com/recurly/recurly-client-ruby/pull/582) ([bhelx](https://github.com/bhelx))
- Use github pages for docs [\#580](https://github.com/recurly/recurly-client-ruby/pull/580) ([bhelx](https://github.com/bhelx))
- Add project metadata to the gemspec [\#578](https://github.com/recurly/recurly-client-ruby/pull/578) ([orien](https://github.com/orien))
- Updating release script to be uniform across all clients [\#577](https://github.com/recurly/recurly-client-ruby/pull/577) ([douglasmiller](https://github.com/douglasmiller))
- Thu Mar 26 20:41:10 UTC 2020 Upgrade API version v2019-10-10 [\#573](https://github.com/recurly/recurly-client-ruby/pull/573) ([bhelx](https://github.com/bhelx))

## [3.4.1](https://github.com/recurly/recurly-client-ruby/tree/3.4.1) (2020-03-26)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.4.0...3.4.1)

**Merged pull requests:**

- Release 3.4.1 [\#571](https://github.com/recurly/recurly-client-ruby/pull/571) ([bhelx](https://github.com/bhelx))
- Follow up bug fixes for \#568 [\#570](https://github.com/recurly/recurly-client-ruby/pull/570) ([bhelx](https://github.com/bhelx))

## [3.4.0](https://github.com/recurly/recurly-client-ruby/tree/3.4.0) (2020-03-23)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.3.1...3.4.0)

**Implemented enhancements:**

- Replace Faraday gem with Net::HTTP, add connection pooling & keep-alive, update CA roots [\#568](https://github.com/recurly/recurly-client-ruby/pull/568) ([isaachall](https://github.com/isaachall))

**Merged pull requests:**

- Release 3.4.0 [\#569](https://github.com/recurly/recurly-client-ruby/pull/569) ([bhelx](https://github.com/bhelx))

## [3.3.1](https://github.com/recurly/recurly-client-ruby/tree/3.3.1) (2020-03-20)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.3.0...3.3.1)

**Merged pull requests:**

- Release 3.3.1 [\#567](https://github.com/recurly/recurly-client-ruby/pull/567) ([douglasmiller](https://github.com/douglasmiller))
- Adding changelog and updated release scripts [\#566](https://github.com/recurly/recurly-client-ruby/pull/566) ([douglasmiller](https://github.com/douglasmiller))
- Thu Mar 19 21:04:19 UTC 2020 Upgrade API version v2019-10-10 [\#564](https://github.com/recurly/recurly-client-ruby/pull/564) ([douglasmiller](https://github.com/douglasmiller))
- Update rake to 12.3.3 [\#561](https://github.com/recurly/recurly-client-ruby/pull/561) ([douglasmiller](https://github.com/douglasmiller))
- Add request for stack trace in issue report [\#558](https://github.com/recurly/recurly-client-ruby/pull/558) ([bhelx](https://github.com/bhelx))

## [3.3.0](https://github.com/recurly/recurly-client-ruby/tree/3.3.0) (2020-02-20)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.2.2...3.3.0)

**Merged pull requests:**

- Release 3.3.0 [\#556](https://github.com/recurly/recurly-client-ruby/pull/556) ([bhelx](https://github.com/bhelx))
- Latest generated changes for v2019-10-10 [\#555](https://github.com/recurly/recurly-client-ruby/pull/555) ([bhelx](https://github.com/bhelx))
- Link to new dev docs for webhooks [\#554](https://github.com/recurly/recurly-client-ruby/pull/554) ([bhelx](https://github.com/bhelx))
- Latest v2019-10-10 Changes [\#552](https://github.com/recurly/recurly-client-ruby/pull/552) ([bhelx](https://github.com/bhelx))

## [3.2.2](https://github.com/recurly/recurly-client-ruby/tree/3.2.2) (2020-02-03)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.2.1...3.2.2)

**Merged pull requests:**

- Release 3.2.2 [\#550](https://github.com/recurly/recurly-client-ruby/pull/550) ([bhelx](https://github.com/bhelx))
- Loosen version restriction on faraday [\#549](https://github.com/recurly/recurly-client-ruby/pull/549) ([bhelx](https://github.com/bhelx))

## [3.2.1](https://github.com/recurly/recurly-client-ruby/tree/3.2.1) (2019-12-10)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.2.0...3.2.1)

**Fixed bugs:**

- Convert Array params to CSV strings [\#545](https://github.com/recurly/recurly-client-ruby/pull/545) ([douglasmiller](https://github.com/douglasmiller))

## [3.2.0](https://github.com/recurly/recurly-client-ruby/tree/3.2.0) (2019-12-03)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.1.3...3.2.0)

**Fixed bugs:**

- It's hard to find out what payment method was used [\#543](https://github.com/recurly/recurly-client-ruby/issues/543)
- Implement way to actually get ErrorMayHaveTransaction [\#540](https://github.com/recurly/recurly-client-ruby/issues/540)

**Merged pull requests:**

- Release 3.2.0 [\#544](https://github.com/recurly/recurly-client-ruby/pull/544) ([bhelx](https://github.com/bhelx))
- Allow object attributes through [\#542](https://github.com/recurly/recurly-client-ruby/pull/542) ([bhelx](https://github.com/bhelx))

## [3.1.3](https://github.com/recurly/recurly-client-ruby/tree/3.1.3) (2019-12-02)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.1.2...3.1.3)

**Fixed bugs:**

- Getting ArgumentError instead of Recurly::Errors::ValidationError [\#538](https://github.com/recurly/recurly-client-ruby/issues/538)
- Issue 540 error may have transaction [\#541](https://github.com/recurly/recurly-client-ruby/pull/541) ([bhelx](https://github.com/bhelx))

## [3.1.2](https://github.com/recurly/recurly-client-ruby/tree/3.1.2) (2019-12-02)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.1.1...3.1.2)

**Fixed bugs:**

- Skip request property type validation for nil values [\#539](https://github.com/recurly/recurly-client-ruby/pull/539) ([bhelx](https://github.com/bhelx))

## [3.1.1](https://github.com/recurly/recurly-client-ruby/tree/3.1.1) (2019-11-27)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.1.0...3.1.1)

**Fixed bugs:**

- Undefined method cast [\#536](https://github.com/recurly/recurly-client-ruby/issues/536)
- Disable searching ancestors when looking up constants [\#537](https://github.com/recurly/recurly-client-ruby/pull/537) ([douglasmiller](https://github.com/douglasmiller))

## [3.1.0](https://github.com/recurly/recurly-client-ruby/tree/3.1.0) (2019-11-18)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.0.0...3.1.0)

**Merged pull requests:**

- Release 3.1.0 [\#530](https://github.com/recurly/recurly-client-ruby/pull/530) ([bhelx](https://github.com/bhelx))
- Generated Updates for API version v2019-10-10 [\#529](https://github.com/recurly/recurly-client-ruby/pull/529) ([douglasmiller](https://github.com/douglasmiller))
- Generated Updates for API version v2019-10-10 [\#528](https://github.com/recurly/recurly-client-ruby/pull/528) ([bhelx](https://github.com/bhelx))

## [3.0.0](https://github.com/recurly/recurly-client-ruby/tree/3.0.0) (2019-10-09)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.0.0.beta.5...3.0.0)

**Merged pull requests:**

- Release 3.0.0 [\#521](https://github.com/recurly/recurly-client-ruby/pull/521) ([bhelx](https://github.com/bhelx))
- Upgrade API version v2019-10-10 [\#519](https://github.com/recurly/recurly-client-ruby/pull/519) ([bhelx](https://github.com/bhelx))
- Update recurly.gemspec [\#518](https://github.com/recurly/recurly-client-ruby/pull/518) ([bhelx](https://github.com/bhelx))
- Add a script for releasing [\#517](https://github.com/recurly/recurly-client-ruby/pull/517) ([bhelx](https://github.com/bhelx))
- Change base url to v3.recurly.com [\#516](https://github.com/recurly/recurly-client-ruby/pull/516) ([bhelx](https://github.com/bhelx))
- No longer need bundler 1.7 [\#511](https://github.com/recurly/recurly-client-ruby/pull/511) ([bhelx](https://github.com/bhelx))
- Refactor internal schema representation [\#510](https://github.com/recurly/recurly-client-ruby/pull/510) ([bhelx](https://github.com/bhelx))
- Implement bump script [\#507](https://github.com/recurly/recurly-client-ruby/pull/507) ([bhelx](https://github.com/bhelx))
- Remove the site-id constraint from Client [\#504](https://github.com/recurly/recurly-client-ruby/pull/504) ([bhelx](https://github.com/bhelx))
- Only set strict mode when env explicitly true [\#501](https://github.com/recurly/recurly-client-ruby/pull/501) ([bhelx](https://github.com/bhelx))
- Document use of webhooks [\#500](https://github.com/recurly/recurly-client-ruby/pull/500) ([bhelx](https://github.com/bhelx))
- Latest v2018-08-09 Updates [\#498](https://github.com/recurly/recurly-client-ruby/pull/498) ([bhelx](https://github.com/bhelx))
- Refer user to rubydoc.info [\#497](https://github.com/recurly/recurly-client-ruby/pull/497) ([bhelx](https://github.com/bhelx))
- Expose HTTP request and response metadata [\#488](https://github.com/recurly/recurly-client-ruby/pull/488) ([bhelx](https://github.com/bhelx))
- Add CONTRIBUTING.md [\#486](https://github.com/recurly/recurly-client-ruby/pull/486) ([bhelx](https://github.com/bhelx))
- Bump 3.0.0.beta.6 [\#485](https://github.com/recurly/recurly-client-ruby/pull/485) ([bhelx](https://github.com/bhelx))
-  Latest v2018-08-09 Changes [\#484](https://github.com/recurly/recurly-client-ruby/pull/484) ([bhelx](https://github.com/bhelx))

## [3.0.0.beta.5](https://github.com/recurly/recurly-client-ruby/tree/3.0.0.beta.5) (2019-06-28)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.0.0.beta.4...3.0.0.beta.5)

**Merged pull requests:**

- 3.0.0.beta.5 [\#483](https://github.com/recurly/recurly-client-ruby/pull/483) ([bhelx](https://github.com/bhelx))
- Latest v2018-08-09 Changes [\#482](https://github.com/recurly/recurly-client-ruby/pull/482) ([bhelx](https://github.com/bhelx))
- no longer need dep scripts [\#476](https://github.com/recurly/recurly-client-ruby/pull/476) ([bhelx](https://github.com/bhelx))
- Add format script and check in specs [\#474](https://github.com/recurly/recurly-client-ruby/pull/474) ([bhelx](https://github.com/bhelx))
- Url Encode Path items [\#472](https://github.com/recurly/recurly-client-ruby/pull/472) ([bhelx](https://github.com/bhelx))
- Add strict mode for json deserializer [\#469](https://github.com/recurly/recurly-client-ruby/pull/469) ([bhelx](https://github.com/bhelx))

## [3.0.0.beta.4](https://github.com/recurly/recurly-client-ruby/tree/3.0.0.beta.4) (2019-04-04)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.0.0.beta.3...3.0.0.beta.4)

**Merged pull requests:**

- V3 Update v2018-08-09 [\#460](https://github.com/recurly/recurly-client-ruby/pull/460) ([aaron-suarez](https://github.com/aaron-suarez))
- Small fixes for private beta [\#458](https://github.com/recurly/recurly-client-ruby/pull/458) ([bhelx](https://github.com/bhelx))
- Use Net-http-persistent for persistent connection [\#408](https://github.com/recurly/recurly-client-ruby/pull/408) ([bhelx](https://github.com/bhelx))
- Update to API 2018-06-06 [\#407](https://github.com/recurly/recurly-client-ruby/pull/407) ([bhelx](https://github.com/bhelx))
- Regenerating the client [\#406](https://github.com/recurly/recurly-client-ruby/pull/406) ([drewish](https://github.com/drewish))
- V3 Pager can error [\#401](https://github.com/recurly/recurly-client-ruby/pull/401) ([drewish](https://github.com/drewish))
- \[V3\] Test more versions of ruby [\#397](https://github.com/recurly/recurly-client-ruby/pull/397) ([drewish](https://github.com/drewish))
- Allow faraday 0.12 for compatibility with oauth2 gem [\#396](https://github.com/recurly/recurly-client-ruby/pull/396) ([drewish](https://github.com/drewish))

## [3.0.0.beta.3](https://github.com/recurly/recurly-client-ruby/tree/3.0.0.beta.3) (2018-08-27)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.0.0.beta.2...3.0.0.beta.3)

## [3.0.0.beta.2](https://github.com/recurly/recurly-client-ruby/tree/3.0.0.beta.2) (2018-07-17)

[Full Changelog](https://github.com/recurly/recurly-client-ruby/compare/3.0.0.beta.1...3.0.0.beta.2)



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
