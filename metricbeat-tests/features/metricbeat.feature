@metricbeat
Feature: As a Metricbeat developer I want to check that default configuration works as expected

Scenario Outline: Check <configuration> configuration is sending metrics to Elasticsearch without errors
  Given metricbeat is installed using "<configuration>" configuration
  When metricbeat runs for "20" seconds after waiting "20" seconds for the service
  Then there are "system" events in the index
    And there are no errors in the index
Examples:
| configuration        |
| metricbeat           |
| metricbeat.docker    |
| metricbeat.reference |
